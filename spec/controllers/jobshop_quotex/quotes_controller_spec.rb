require 'spec_helper'

module JobshopQuotex
  describe QuotesController do
    before(:each) do
      controller.should_receive(:require_signin)
      controller.should_receive(:require_employee)
      @pagination_config = FactoryGirl.create(:engine_config, :engine_name => nil, :engine_version => nil, :argument_name => 'pagination', :argument_value => 30)
      engine_config = FactoryGirl.create(:engine_config, :engine_name => nil, :engine_version => nil, :argument_name => 'piece_unit', :argument_value => "t('set'), t('piece')")
    end
    
    before(:each) do
      wf = "def submit
          wf_common_action('initial_state', 'reviewing', 'submit')
        end   
        def approve
          wf_common_action('reviewing', 'approved', 'approve')
        end    
        def reject
          wf_common_action('reviewing', 'rejected', 'reject')
        end"
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_wf_action_def', :argument_value => wf)
      FactoryGirl.create(:engine_config, :engine_name => 'jobshop_quotex', :engine_version => nil, :argument_name => 'quote_wf_final_state_string', :argument_value => 'rejected, approved')
      
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_pdef_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_route_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_validate_in_config', :argument_value => 'true')
      FactoryGirl.create(:engine_config, :engine_name => '', :engine_version => nil, :argument_name => 'wf_list_open_process_in_day', :argument_value => '45')
      
      z = FactoryGirl.create(:zone, :zone_name => 'hq')
      type = FactoryGirl.create(:group_type, :name => 'employee')
      ug = FactoryGirl.create(:sys_user_group, :user_group_name => 'ceo', :group_type_id => type.id, :zone_id => z.id)
      @role = FactoryGirl.create(:role_definition)
      ur = FactoryGirl.create(:user_role, :role_definition_id => @role.id)
      ul = FactoryGirl.build(:user_level, :sys_user_group_id => ug.id)
      @u = FactoryGirl.create(:user, :user_levels => [ul], :user_roles => [ur])
      
      @cust = FactoryGirl.create(:kustomerx_customer) 
      @rfq = FactoryGirl.create(:jobshop_rfqx_rfq, :customer_id => @cust.id) 
      @q_task = FactoryGirl.create(:event_taskx_event_task, :resource_id => @rfq.id, :resource_string => JobshopQuotex.rfq_class.to_s.underscore.pluralize)
      @q_task1 = FactoryGirl.create(:event_taskx_event_task, :name => 'a new name', :resource_id => @rfq.id, :resource_string => JobshopQuotex.rfq_class.to_s.underscore.pluralize)
      @mfg_process = FactoryGirl.create(:mfg_processx_mfg_process)
    end
    
    render_views
    
    describe "GET 'index'" do
      it "returns all quotes" do
        user_access = FactoryGirl.create(:user_access, :action => 'index', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "JobshopQuotex::Quote.where(:void => false).order('created_at DESC')")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task.id, :mfg_process_id => @mfg_process.id, :rfq_id => @rfq.id)
        q1 = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :mfg_process_id => @mfg_process.id, :rfq_id => @rfq.id)
        get 'index', {:use_route => :jobshop_quotex}
        assigns(:quotes).should =~ [q, q1]
      end
      
      it "should only return the quotes which belongs to the quote task" do
        user_access = FactoryGirl.create(:user_access, :action => 'index', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "JobshopQuotex::Quote.where(:void => false).order('created_at DESC')")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task.id, :mfg_process_id => @mfg_process.id, :rfq_id => @rfq.id)
        q1 = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :mfg_process_id => @mfg_process.id, :rfq_id => @rfq.id)
        get 'index', {:use_route => :jobshop_quotex, :quote_task_id => @q_task1.id}
        assigns(:quotes).should =~ [q1]
      end
    end
  
    describe "GET 'new'" do
      it "returns http success" do
        user_access = FactoryGirl.create(:user_access, :action => 'create', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        get 'new', {:use_route => :jobshop_quotex, :quote_task_id => @q_task.id}
        response.should be_success
      end
    end
  
    describe "GET 'create'" do
      it "returns redirect with success" do
        user_access = FactoryGirl.create(:user_access, :action => 'create', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.attributes_for(:jobshop_quotex_quote, :quote_task_id => @q_task1.id)
        get 'create', {:use_route => :jobshop_quotex, :quote_task_id => @q_task1.id, :quote => q}
        response.should redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=Successfully Saved!")
      end
      
      it "should render new with data error" do
        user_access = FactoryGirl.create(:user_access, :action => 'create', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.attributes_for(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :unit_price => 0)
        get 'create', {:use_route => :jobshop_quotex, :quote_task_id => @q_task1.id, :quote => q}
        response.should render_template('new')
      end
    end
  
    describe "GET 'edit'" do
      it "returns http success" do
        user_access = FactoryGirl.create(:user_access, :action => 'update', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id)
        get 'edit', {:use_route => :jobshop_quotex, :id => q.id}
        response.should be_success
      end
      
      it "should redirect to previous page for an open process" do
        user_access = FactoryGirl.create(:user_access, :action => 'update', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :wf_state => 'reviewing')  
        get 'edit', {:use_route => :jobshop_quotex, :id => q.id}
        response.should redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=NO Update. Record Being Processed!")
      end
    end
  
    describe "GET 'update'" do
      it "should redirect successfully" do
        user_access = FactoryGirl.create(:user_access, :action => 'update', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id)
        get 'update', {:use_route => :jobshop_quotex, :id => q.id, :quote => {:material_wt => 20.1}}
        response.should redirect_to URI.escape(SUBURI + "/authentify/view_handler?index=0&msg=Successfully Updated!")
      end
      
      it "should render edit with data error" do
        user_access = FactoryGirl.create(:user_access, :action => 'update', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id)
        get 'update', {:use_route => :jobshop_quotex, :id => q.id, :quote => {:material_wt => 0}}
        response.should render_template('edit')
      end
    end
  
    describe "GET 'show'" do
      it "returns http success" do
        user_access = FactoryGirl.create(:user_access, :action => 'show', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "record.quoted_by_id == session[:user_id]")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :quoted_by_id => @u.id)
        get 'show', {:use_route => :jobshop_quotex, :id => q.id, }
        response.should be_success
      end
    end
  
    describe "GET 'copy_last'" do
      it "should display the copy last page" do
        user_access = FactoryGirl.create(:user_access, :action => 'copy_last', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "")
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task.id, :quoted_by_id => @u.id)
        get 'copy_last', {:use_route => :jobshop_quotex, :quote_task_id => @q_task.id}
        response.should be_success
      end
    end
    
    describe "GET 'list open process" do
      it "return open process only" do
        user_access = FactoryGirl.create(:user_access, :action => 'list_open_process', :resource =>'jobshop_quotex_quotes', :role_definition_id => @role.id, :rank => 1,
        :sql_code => "JobshopQuotex::Quote.where(:void => false).order('created_at DESC')")
        
        session[:user_id] = @u.id
        session[:user_privilege] = Authentify::UserPrivilegeHelper::UserPrivilege.new(@u.id)
        q = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task.id, :created_at => 50.days.ago, :wf_state => 'initial_state')
        q1 = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :wf_state => 'reviewing')
        q2 = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :wf_state => 'initial_state')
        q3 = FactoryGirl.create(:jobshop_quotex_quote, :quote_task_id => @q_task1.id, :wf_state => 'rejected', :wfid => 'rejected')  #wf_state can't be what was defined.
        get 'list_open_process', {:use_route => :jobshop_quotex}
        assigns(:quotes).should =~ [q1, q2]
      end
    end
  
  end
end
