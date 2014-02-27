require_dependency "jobshop_quotex/application_controller"

module JobshopQuotex
  class QuotesController < ApplicationController
    before_filter :require_employee
    before_filter :load_parent_record
    
    def index
      @title = t('Quotes')
      @quotes = params[:jobshop_quotex_quotes][:model_ar_r]  #returned by check_access_right
      @quotes = @quotes.where(:rfq_id => @rfq.id) if @rfq
      @quotes = @quotes.where(:quote_task_id => @quote_task.id) if @quote_task
      @quotes = @quotes.page(params[:page]).per_page(@max_pagination) 
      @erb_code = find_config_const('quote_index_view', 'jobshop_quotex')
    end
  
    def new
      @title = t('New Quote')
      @quote = JobshopQuotex::Quote.new()
      @qty_unit = find_config_const('piece_unit').split(',').map(&:strip)
      @erb_code = find_config_const('quote_new_view', 'jobshop_quotex')
    end
  
    def create
      @quote = JobshopQuotex::Quote.new(params[:quote], :as => :role_new)
      @quote.last_updated_by_id = session[:user_id]
      @quote.quoted_by_id = session[:user_id]
      if @quote.save
        redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=Successfully Saved!")
      else
        @qty_unit = find_config_const('piece_unit').split(',').map(&:strip)
        @rfq = JobshopQuotex.rfq_class.find_by_id(params[:quote][:rfq_id]) if params[:quote].present? && params[:quote][:rfq_id].present?
        @quote_task = JobshopQuotex.quote_task_class.find_by_id(params[:quote][:quote_task_id]) if params[:quote].present? && params[:quote][:quote_task_id].present?
        flash[:notice] = t('Data Error. Not Saved!')
        render 'new'
      end
    end
  
    def edit
      @title = t('Update Quote')
      @quote = JobshopQuotex::Quote.find_by_id(params[:id])
      @erb_code = find_config_const('quote_edit_view', 'jobshop_quotex')
      if @quote.wf_state.present? && @quote.current_state != :initial_state
        redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=NO Update. Record Being Processed!")
      end
    end
  
    def update
      @quote = JobshopQuotex::Quote.find_by_id(params[:id])
      @quote.last_updated_by_id = session[:user_id]
      if @quote.update_attributes(params[:quote], :as => :role_update)
        redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=Successfully Updated!")
      else
        flash[:notice] = t('Data Error. Not Updated!')
        render 'edit'
      end
    end
  
    def show
      @title = t('Quote Info')
      @quote = JobshopQuotex::Quote.find_by_id(params[:id])
      @erb_code = find_config_const('quote_show_view', 'jobshop_quotex')
    end
    
    def list_open_process  
      index()
      @quotes = return_open_process(@quotes, find_config_const('quote_wf_final_state_string', 'jobshop_quotex'))  # ModelName_wf_final_state_string
    end
  
    def copy_last
      @title = t('New Quote')
      @quote = JobshopQuotex::Quote.find_by_id(JobshopQuotex::Quote.where(:quote_task_id => @quote_task.id, :void => false).last.id)
      @qty_unit = find_config_const('piece_unit').split(',').map(&:strip)
      @erb_code = find_config_const('quote_copy_last_view', 'jobshop_quotex')
    end
    
    protected
    def load_parent_record
      @rfq = JobshopQuotex.rfq_class.find_by_id(params[:rfq_id]) if params[:rfq_id].present?
      @rfq = JobshopQuotex.rfq_class.find_by_id(JobshopQuotex::quote_task_class.find_by_id(params[:quote_task_id]).resource_id) if params[:quote_task_id].present?
      @quote_task = JobshopQuotex.quote_task_class.find_by_id(params[:quote_task_id]) if params[:quote_task_id].present?
      @quote_task = JobshopQuotex.quote_task_class.find_by_id(JobshopQuotex::Quote.find_by_id(params[:id]).quote_task_id) if params[:id].present?
      @rfq = JobshopQuotex.rfq_class.find_by_id(JobshopQuotex::Quote.find_by_id(params[:id]).rfq_id) if params[:id].present?
    end
  end
end
