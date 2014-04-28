require 'spec_helper'

describe "LinkTests" do
  describe "GET /jobshop_quotex_link_tests" do
    mini_btn = 'btn btn-mini '
    ActionView::CompiledTemplates::BUTTONS_CLS =
        {'default' => 'btn',
         'mini-default' => mini_btn + 'btn',
         'action'       => 'btn btn-primary',
         'mini-action'  => mini_btn + 'btn btn-primary',
         'info'         => 'btn btn-info',
         'mini-info'    => mini_btn + 'btn btn-info',
         'success'      => 'btn btn-success',
         'mini-success' => mini_btn + 'btn btn-success',
         'warning'      => 'btn btn-warning',
         'mini-warning' => mini_btn + 'btn btn-warning',
         'danger'       => 'btn btn-danger',
         'mini-danger'  => mini_btn + 'btn btn-danger',
         'inverse'      => 'btn btn-inverse',
         'mini-inverse' => mini_btn + 'btn btn-inverse',
         'link'         => 'btn btn-link',
         'mini-link'    => mini_btn +  'btn btn-link'
        }
    before(:each) do
      wf = "def submit
          wf_common_action('initial_state', 'reviewing', 'submit')
        end   
        def approve
          wf_common_action('reviewing', 'approved', 'approve')
        end    
        def reject
          wf_common_action('reviewing', 'rejected', 'reject')
        end
        def rewind
          wf_common_action('reviewing', 'initial_state', 'rewind')
        end
        def send_quote  
          wf_common_action('approved', 'sent', 'send_quote')
        end
        "
        #(from, to, event) send is a rails/ruby keywoard and can NOT be used here as event.
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_wf_action_def', :argument_value => wf)
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_wf_final_state_string', 
       :argument_value => 'rejected, sent')
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_submit_inline', 
                         :argument_value => "<%= f.input :tax, :label => t('Tax') %>")
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'validate_quote_submit', 
                         :argument_value => "validates :tax, :presence => true
                                             validates_numericality_of :tax, :greater_than_or_equal_to => 0 ")
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_approve_inline', 
                         :argument_value => "<%= f.input :approved, :as => :hidden, :input_html => {:value => true} %>,
                                             <%= f.input :approved_date, :label => t('Approve Date') %>")
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'validate_quote_approve', 
                         :argument_value => "validates :approved, :approved_date, :presence => true ")  
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_send_quote_inline', 
                         :argument_value => "<%= f.input :sent_to_customer, :as => :hidden, :input_html => {:value => true} %>,
                                             <%= f.input :sent_to_customer_date, :label => t('Send Quote Date') %>")
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'validate_quote_send_quote', 
                         :argument_value => "validates :sent_to_customer, :sent_to_customer_date, :presence => true ")                                    
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_pdef_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_route_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_validate_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_list_open_process_in_day', :argument_value => '45')
      
      @pagination_config = FactoryGirl.create(:engine_config, :engine_name => nil, :engine_version => nil, :argument_name => 'pagination', :argument_value => 30)
      z = FactoryGirl.create(:zone, :zone_name => 'hq')
      type = FactoryGirl.create(:group_type, :name => 'employee')
      ug = FactoryGirl.create(:sys_user_group, :user_group_name => 'ceo', :group_type_id => type.id, :zone_id => z.id)
      @role = FactoryGirl.create(:role_definition)
      ur = FactoryGirl.create(:user_role, :role_definition_id => @role.id)
      ul = FactoryGirl.build(:user_level, :sys_user_group_id => ug.id)
      @u = FactoryGirl.create(:user, :user_levels => [ul], :user_roles => [ur], :login => 'thistest', :password => 'password', :password_confirmation => 'password')
      
      ua1 = FactoryGirl.create(:user_access, :action => 'index', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
           :sql_code => "JobshopQuotex::Quote.where(:void => false).order('created_at DESC')")
      ua1 = FactoryGirl.create(:user_access, :action => 'create', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
           :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'update', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
           :sql_code => "")
      user_access = FactoryGirl.create(:user_access, :action => 'show', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "record.quoted_by_id == session[:user_id]")
      ua1 = FactoryGirl.create(:user_access, :action => 'create', :resource => 'mfg_orderx_orders', :role_definition_id => @role.id, :rank => 1,
           :sql_code => "")
      user_access = FactoryGirl.create(:user_access, :action => 'create_jobshop_quote', :resource => 'commonx_logs', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'list_open_process', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "JobshopQuotex::Quote.where(:void => false).order('created_at DESC')")
      ua1 = FactoryGirl.create(:user_access, :action => 'event_action', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'submit', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'approve', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'reject', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "")
      ua1 = FactoryGirl.create(:user_access, :action => 'rewind', :resource => 'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
      :sql_code => "")
      
      @cust = FactoryGirl.create(:kustomerx_customer) 
      @rfq = FactoryGirl.create(:jobshop_rfqx_rfq, :customer_id => @cust.id) 
      @q_task = FactoryGirl.create(:event_taskx_event_task, :resource_id => @rfq.id, :resource_string => JobshopQuotex.rfq_class.to_s.underscore.pluralize)
      #@q_task1 = FactoryGirl.create(:event_taskx_event_task, :name => 'quote && quote')
      mfg_process = FactoryGirl.create(:mfg_processx_mfg_process) 
      @quote = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task.id, :mfg_process_id => mfg_process.id, :rfq_id => @rfq.id) 
      log = FactoryGirl.create(:commonx_log, :resource_id => @quote.id, :resource_name => 'jobshop_quotex_quotes')
          
      visit '/'
      #save_and_open_page
      fill_in "login", :with => @u.login
      fill_in "password", :with => @u.password
      click_button 'Login'
    end
    
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      
      visit quotes_path
      #save_and_open_page
      page.should have_content('Quotes')
      click_link 'Edit'
      page.should have_content('Update Quote')
      fill_in 'quote_drawing_num', :with => 'a new number'
      click_button 'Save'
      save_and_open_page
      #bad edit data
      visit quotes_path
      click_link 'Edit'
      fill_in 'quote_qty_quoted', :with => ''
      click_button 'Save'
      save_and_open_page
      
      visit quotes_path
      click_link @quote.id.to_s
      #save_and_open_page
      page.should have_content('Quote Info')
      save_and_open_page
      #click_link 'New Log'
      #page.should have_content('Log')
     
      
      #new quote. 
      config = FactoryGirl.create(:engine_config, :engine_name => nil, :engine_version => nil, :argument_name => 'piece_unit', :argument_value => 'piece')
      mfg = FactoryGirl.create(:mfg_processx_mfg_process, :name => 'new nane', :rfq_id => @rfq.id)
      visit new_quote_path(:quote_task_id => @q_task.id, :rfq_id => @rfq.id)
      save_and_open_page
      #fill_in 'quote_mfg_process_id', :with => mfg.name
      select(mfg.name, :from => 'quote_mfg_process_id')
      fill_in 'quote_material_quoted', :with => 'steel'
      fill_in 'quote_qty_quoted', :with => 10000
      fill_in 'quote_drawing_num', :with => 'piece123'
      select('piece', :from => 'quote_unit')
      fill_in 'quote_material_wt', with: 20
      fill_in 'quote_material_unit_price', with: 10
      fill_in 'quote_machining_cost', with: 10
      fill_in 'quote_unit_price', with: 23
      
      click_button 'Save'  #need to set unit_price to not readonly on new view. Otherwise need to make js working on the page.
      save_and_open_page
      #bad data
      visit new_quote_path(:quote_task_id => @q_task.id, :rfq_id => @rfq.id)
      select(mfg.name, :from => 'quote_mfg_process_id')
      fill_in 'quote_material_quoted', :with => ''
      fill_in 'quote_qty_quoted', :with => 10000
      fill_in 'quote_drawing_num', :with => 'piece123'
      select('piece', :from => 'quote_unit')
      fill_in 'quote_material_wt', with: 20
      fill_in 'quote_material_unit_price', with: 10
      fill_in 'quote_machining_cost', with: 10
      fill_in 'quote_unit_price', with: 23     
      click_button 'Save'  #need to set unit_price to not readonly on new view. Otherwise need to make js working on the page.
      save_and_open_page
    end
    
    it "should handle workflow" do
      #workflow submit
      visit quotes_path
      #save_and_open_page
      click_link 'Submit'
      #save_and_open_page
      fill_in 'quote_wf_comment', :with => 'this line tests workflow'
      fill_in 'quote_tax', :with => '10.00'
      #save_and_open_page
      click_button 'Save'
      #
      visit quotes_path
      save_and_open_page
      click_link 'Open Process'
      page.should have_content('Quotes')
      
      visit quotes_path
      click_link @quote.id.to_s
      #save_and_open_page
      page.should have_content('Quote Info')
      page.should have_content('this line tests workflow')
      click_link 'New Order'
      #save_and_open_page
      page.should have_content('New Order')
      
      #let's rewind it back
      visit quotes_path
      save_and_open_page
      click_link 'Rewind'
      fill_in 'quote_wf_comment', :with => 'this quote sucks'
      click_button 'Save'
      #check the message
      visit quotes_path
      click_link @quote.id.to_s
      save_and_open_page
      page.should have_content('Quote Info')
      page.should have_content('this quote sucks')
      page.should have_content('Initial State')
      
    end
  end
end
