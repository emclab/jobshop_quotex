module JobshopQuotex
  include Authentify::AuthentifyUtility
  require 'workflow'
  class Quote < ActiveRecord::Base
    include Workflow
    workflow_column :wf_state
    
    workflow do
      #self.to_s = 'EngineName::TableName'    ex, 'InQuotex::Quote'
      wf = Authentify::AuthentifyUtility.find_config_const('quote_wf_pdef', 'jobshop_quotex')
      if Authentify::AuthentifyUtility.find_config_const('wf_pdef_in_config') == 'true' && wf.present?
         #quotes is table name
        eval(wf) if wf.present? #&& self.wf_state.present 
      elsif Rails.env.test? #for rspec. loaded before FactoryGirl.
        state :initial_state do
          event :submit, :transitions_to => :reviewing
        end
        state :reviewing do
          event :approve, :transitions_to => :approved
          event :reject, :transitions_to => :rejected
        end
        state :approved
        state :rejected
      end
    end
    
    attr_accessor :void_noupdate, :quoted_by_noupdate, :last_updated_by_noupdate, :mfg_process_noupdate, :quote_task_noupdate, :wf_comment, :id_noupdate, :rfq_prod_info
    
    attr_accessible :grinding_cost, :heat_treat_cost, :insp_cost, :last_updated_by_id, :machining_cost, :material_cost, :material_quoted, :material_unit_price, 
                    :material_wt, :mgmt_cost, :misc_cost, :note, :packing_cost, :plating_cost, :profit, :qty_quoted, :quote_task_id, :quoted_by_id, 
                    :shipping_cost, :surface_finish_cost, :tax, :tooling_cost, :unit, :unit_price, :void, :wfid, :mfg_process_id, :rfq_id, :wf_state,
                    :mfg_process_noupdate, :quote_task_noupdate, :rfq_prod_info,
                    :as => :role_new
    attr_accessible :grinding_cost, :heat_treat_cost, :insp_cost, :machining_cost, :material_cost, :material_quoted, :material_unit_price, 
                    :material_wt, :mgmt_cost, :misc_cost, :note, :packing_cost, :plating_cost, :profit, :qty_quoted, :quote_task_id, 
                    :shipping_cost, :surface_finish_cost, :tax, :tooling_cost, :unit, :unit_price, :void, :wfid, :mfg_process_id, :wf_state,
                    :void_noupdate, :quoted_by_noupdate, :last_updated_by_noupdate, :mfg_process_noupdate, :quote_task_noupdate, :id_noupdate, :wf_comment,
                    :rfq_prod_info,
                    :as => :role_update
                    
    belongs_to :mfg_process, :class_name => JobshopQuotex.mfg_process_class.to_s
    belongs_to :quote_task, :class_name => JobshopQuotex.quote_task_class.to_s
    belongs_to :rfq, :class_name => JobshopQuotex.rfq_class.to_s
    belongs_to :quoted_by, :class_name => 'Authentify::User'
    belongs_to :last_updated_by, :class_name => 'Authentify::User'
   
    validates :unit_price, :qty_quoted, :quote_task_id, :mfg_process_id, :rfq_id, :presence => true,
                                :numericality => {:greater_than => 0}
                                
    validates :tax,  :numericality => {:greater_than_or_equal_to => 0, :if => 'tax.present?'}
    validates :grinding_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'grinding_cost.present?'}
    validates :heat_treat_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'heat_treat_cost.present?'} 
    validates :insp_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'insp_cost.present?'} 
    validates :machining_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'machining_cost.present?'} 
    validates :mgmt_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'mgmt_cost.present?'} 
    validates :misc_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'misc_cost.present?'} 
    validates :packing_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'packing_cost.present?'} 
    validates :plating_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'plating_cost.present?'}
    validates :shipping_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'shipping_cost.present?'}
    validates :surface_finish_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'surface_finish_cost.present?'}
    validates :tooling_cost, :numericality => {:greater_than_or_equal_to => 0, :if => 'tooling_cost.present?'}
   
    validates :material_unit_price, :numericality => {:greater_than => 0, :if => 'material_unit_price.present?'}
    validates :material_cost, :numericality => {:greater_than => 0, :if => 'material_cost.present?'}
    validates :material_wt,  :numericality => {:greater_than => 0, :if => 'material_wt.present?'}
    validates :profit, :numericality => {:greater_than => 0, :if => 'profit.present?'}        
    validates :unit, :presence => true
    
    #for workflow input validation  
    validate :validate_wf_input_data, :if => 'wf_state.present?' 
    
    def validate_wf_input_data
      wf = Authentify::AuthentifyUtility.find_config_const('validation_quote_' + self.wf_state, 'jobshop_quotex')
      if Authentify::AuthentifyUtility.find_config_const('wf_validate_in_config') == 'true' && wf.present? 
        eval(wf) if wf.present?
      #else
        #validate code here
        #case wf_state
        #when 'submit'
        #end
      end
    end
  end
end
