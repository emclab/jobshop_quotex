DROP TABLE IF EXISTS "authentify_engine_configs";
CREATE TABLE "authentify_engine_configs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "engine_name" varchar(255), "engine_version" varchar(255), "argument_name" varchar(255), "argument_value" text, "last_updated_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
INSERT INTO "authentify_engine_configs" VALUES(1,'customerx',NULL,'sales_lead','false',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(2,'projectx',NULL,'project_num_time_gen','Projectx::Project.last.nil? ? (Time.now.strftime("%Y%m%d") + "-"  + 112233.to_s + "-" + rand(100..999).to_s) :  (Time.now.strftime("%Y%m%d") + "-"  + (Projectx::Project.last.project_num.split("-")[-2].to_i + 555).to_s + "-" + rand(100..999).to_s)',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(4,'projectx',NULL,'project_num_increment','112233',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(5,'',NULL,'pagination','30',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(6,'projectx',NULL,'payment_terms','0,10, 15, 30, 60, 75, 90',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(7,'authentify','','login_name','false',NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500',NULL);
INSERT INTO "authentify_engine_configs" VALUES(8,'authentify',NULL,'has_customer_user','false',NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500',NULL);
INSERT INTO "authentify_engine_configs" VALUES(9,NULL,NULL,'SESSION_TIMEOUT_MINUTES','90',NULL,'2013-05-14 10:16:26 -0500','2013-05-14 10:16:26 -0500',NULL);
INSERT INTO "authentify_engine_configs" VALUES(10,NULL,NULL,'SESSION_WIPEOUT_HOURS','12',NULL,'2013-05-14 10:16:26 -0500','2013-05-14 10:16:26 -0500',NULL);
INSERT INTO "authentify_engine_configs" VALUES(11,NULL,NULL,'SUBURI','/nbhy',NULL,'2013-05-14 10:16:26 -0500','2013-05-14 10:16:26 -0500',NULL);
INSERT INTO "authentify_engine_configs" VALUES(12,NULL,NULL,'action-btn','btn btn-primary',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(13,NULL,NULL,'info-btn','btn btn-info',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(14,NULL,NULL,'simple_form_input_width','%w(StringInput RangeInput CollectionInput GroupedCollectionSelectInput PasswordInput TextInput NumericInput CollectionSelectInput).each do |class_name|
  old_class = "SimpleForm::Inputs::#{class_name}".constantize
  new_class = Class.new(old_class) do
    def input_html_classes
      super.push(''span5'')
    end
  end
  Object.const_set(class_name, new_class)
end',NULL,'2013-09-09','2013-09-09',NULL);
INSERT INTO "authentify_engine_configs" VALUES(15,NULL,NULL,'success-btn','btn btn-success',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(16,NULL,NULL,'warning-btn','btn btn-warning',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(17,NULL,NULL,'danger-btn','btn btn-danger',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(18,NULL,NULL,'inverse-btn','btn btn-inverse',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(19,NULL,NULL,'link-btn','btn btn-link',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(20,NULL,NULL,'default-btn','btn',NULL,'','',NULL);
INSERT INTO "authentify_engine_configs" VALUES(21,'projectx',NULL,'project_has_sales','true',NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(22,NULL,NULL,'max_num_user','40',NULL,'2013-06-02 10:16:26','2013-06-02 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(23,NULL,NULL,'search_stats_max_period_year','3',1,'2013-07-07 10:16:26','2013-07-07 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(25,'projectx',NULL,'payment_type','转账,支票,现金,支付卡,在线支付,其他',NULL,'2013-07-29 10:16:26','2013-07-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(26,'projectx',NULL,'task_log_index_view','<tr>
      <th><%= t(''Date'') %></th>
      <th><%= t(''Project Name'') %></th>
      <th><%= t(''Task Name'') %></th>
      <th><%= t(''Log'') %></th>
      <th><%= t(''Entered By'') %></th>  
    </tr>
    <% @logs.each do |r| %>
        <tr>
          <td><%= (r.created_at + 8.hours).strftime(''%Y/%m/%d'')%></td>
          <td><%= Projectx::Task.find_by_id(r.resource_id).project.name %></td>
          <td><%= Projectx::Task.find_by_id(r.resource_id).task_template.task_definition.name %></td>
          <td><%= prt(r, :log) %></td>
          <td><%= prt(r, ''last_updated_by.name'') %></td>
        </tr>
    <% end %>',NULL,'2013-08-29 10:16:26','2013-08-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(27,'projectx',NULL,'project_log_index_view','<tr>     
      <th><%= t(''Project Name'') %></th>
      <th><%= t(''Date'') %></th>
      <th><%= t(''Log'') %></th>
      <th><%= t(''Entered By'') %></th>
    </tr>

    <% @logs.each do |r| %>
        <tr>
          <td><%= Projectx::Project.find_by_id(r.resource_id).name %></td>
          <td><%= (r.created_at + 8.hours).strftime(''%Y/%m/%d'')%></td>
          <td><%= prt(r, :log) %></td>
          <td><%= prt(r, ''last_updated_by.name'') %></td>
          
        </tr>
    <% end %>',NULL,'2013-08-29 10:16:26','2013-08-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(28,'projectx',NULL,'task_request_log_index_view','<tr>
     <th><%= t(''Date'') %></th>
      <th><%= t(''Project Name'') %></th>
      <th><%= t(''Task Name'') %></th>
      <th><%= t(''Task Request Name'') %></th>
      <th><%= t(''Log'') %></th>
      <th><%= t(''Entered By'') %></th>

    </tr>

    <% @logs.each do |r| %>
        <tr>
         <td><%= (r.created_at + 8.hours).strftime(''%Y/%m/%d'')%></td>
          <td><%= Projectx::TaskRequest.find_by_id(r.resource_id).task.project.name %></td>
          <td><%= Projectx::TaskRequest.find_by_id(r.resource_id).task.task_template.task_definition.name %></td>
          <td><%= Projectx::TaskRequest.find_by_id(r.resource_id).name %></td>
          <td><%= prt(r, :log) %></td>
          <td><%= prt(r, ''last_updated_by.name'') %></td>
          
        </tr>
    <% end %>',NULL,'2013-07-29 10:16:26','2013-07-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(29,'customerx',NULL,'customer_comm_record_log_index_view','<tr>
      <th><%=t(''CustomerName'') %></th>
      <th><%=t(''Date'') %></th>
      <th><%=t(''RecordSubject'') %></th>
      <th><%=t(''Log'') %></th>
      <th><%=t(''Entered By'') %></th>
    </tr>

    <% @logs.each do |r| %>
        <tr>
          <td><%= Customerx::CustomerCommRecord.find_by_id(r.resource_id).customer.short_name %></td>
          <td><%= (r.created_at + 8.hours).strftime(''%Y/%m/%d'')%></td>
          <td><%= Customerx::CustomerCommRecord.find_by_id(r.resource_id).subject %></td>
          <td><%= prt(r, :log) %></td>
          <td><%= prt(r, ''last_updated_by.name'') %></td>
          
        </tr>
    <% end %>',NULL,'2013-07-29 10:16:26','2013-07-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(30,'customerx',NULL,'sales_lead_log_index_view','<tr>
      <th><%= t(''Date'') %></th>
      <th><%= t(''CustomerName'') %></th>
      <th><%= t(''LeadSubject'') %></th>
      <th><%= t(''Log'') %></th>
      <th><%= t(''Entered By'') %></th>
      <th></th>
    </tr>

    <% @logs.each do |r| %>
        <tr>
          <td><%= (r.created_at + 8.hours).strftime(''%Y/%m/%d'')%></td>
          <td><%= Customerx::SalesLead.find_by_id(r.resource_id).customer.short_name %></td>
          <td><%= Customerx::SalesLead.find_by_id(r.resource_id).subject %></td>
          <td><%= prt(r, :log) %></td>
          <td><%= prt(r, ''last_updated_by.name'') %></td>
          
        </tr>
    <% end %>',NULL,'2013-07-29 10:16:26','2013-07-29 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(31,NULL,NULL,'main_menu_user','<table width="90%">
		<tr>
			<td width="40%" valign="top">
				<ul>
					<li><%= link_to ''项目'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.projects_path}" %></li>
					<li><%= link_to ''项目合同'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.contracts_path}" %></li>
					<li><%= link_to ''项目任务'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.tasks_path}" %></li>
					<li><%= link_to ''项目Log'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.logs_path(:resource_name => ''projectx/projects'', :subaction => ''project''))}" %></li>
					<li><%= link_to ''客户交流记录'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + customerx.customer_comm_records_path}" %></li>
					
					<li>系统设置/System Config</li>	
                    <li><%= link_to ''客户商业状态'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''customer_status'', :subaction => ''customer_status''))}" %></li>
                    <li><%= link_to ''质量体系'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''quality_system'', :subaction => ''quality_system''))}" %></li>
                    <li><%= link_to ''项目状态'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''project_status'', :subaction => ''project_status''))}" %></li>
                    <li><%= link_to ''项目任务模板'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.project_task_templates_path}" %></li>
                    <li><%= link_to ''项目任务分类'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.task_definitions_path}" %></li>
				</td>
				<td width="20">&nbsp;</td>
				<td valign="top">
				<ul>
					<li><%= link_to ''客户'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + customerx.customers_path}" %></li>
					<li><%= link_to ''项目收款情况'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.payments_path}" %></li>	
                                        <li><%= link_to ''项目任务申请'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.task_requests_path}" %></li>					
					<li><%= link_to ''项目任务Log'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.logs_path(:resource_name => ''projectx/tasks'', :subaction => ''task''))}" %></li>	
					<li><%= link_to ''任务申请Log'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.logs_path(:resource_name => ''projectx/task_requests'', :subaction => ''task_request''))}" %></li>
					<li><%= link_to ''登录Log'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + authentify.sys_logs_path}" if has_action_right?(''index_sys_log'', ''user_menus'') %></li>
					<li> </li>				
					<li><%= link_to ''交流分类'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''customer_comm_category'', :subaction => ''customer_comm_category''))}" %></li>
					<li><%= link_to ''项目任务状态'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''task_status'', :subaction => ''task_status''))}" %></li>
					<li><%= link_to ''项目分类'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + projectx.type_definitions_path}" %></li>
					<li><%= link_to ''销售线索来源'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + CGI::escape(commonx.misc_definitions_path(:for_which => ''sales_lead_source'', :subaction => ''sales_lead_source''))}" if find_config_const(''sales_lead'', ''customerx'') == ''true'' %></li>
					
				</ul>
			</td>
		</tr>
	</table>	',NULL,'2013-08-18 10:16:26','2013-08-18 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(32,NULL,NULL,'main_menu_admin','<table width="90%">
		<tr>
			<td width="40%" valign="top">
				<ul>
					<li><%= link_to ''用户管理'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + authentify.users_path}" %></li>
					<li><%= link_to ''查看系统记录'', SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + authentify.sys_logs_path}" %></li>
				</ul>
			</td>
		</tr>
</table>	',NULL,'2013-08-18 10:16:26','2013-08-18 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(33,'projectx',NULL,'project_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%= t(''Customer'') %></th>
    <th><%= t(''Project Name'') %></th>
    <th><%= t(''Project Number'') %></th>
    <th><%= t(''Project Status'') %></th>
    <th><%= t(''Start Date'') %></th>
    <th><%= t(''Project Manager'') %></th>
    <th><%= t(''ProjectTaskTemplate'') %></th>
    <th><%= t(''Contract'') %></th>
    <th><%= t(''Sales'') %></th>
    <th><%= t(''Payment %'') %></th>
    <th><%= t(''Expedite'') %></th>
    <th><%= t(''Est Delivery Date'') %></th>
    <th><%= t(''Delivery Date'') %></th>
    <th></th>
    <th></th>
    <th></th>
  </tr>

<% models.each do |prj| %>
  <tr>
    <% if has_action_right?(''show'', ''projectx_projects'', prj) %>
        <td><%= link_to prj.id, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.project_path(prj)}"  %></td>
    <% else %>
        <td><%= prj.id %></td>
    <% end %>
  	<% if has_action_right?(''show'',''customerx_customers'', prj.customer ) %>
  	  <td><%= link_to prj.customer.short_name, SUBURI + "/authentify/view_handler?index=1&url=#{SUBURI + customerx.customer_path(prj.customer_id)}"  %></td>
  	  <%#= ONLY the show customer missing the SUBURI. %>
  	<% else %>
  	  <td><%= prt(prj, ''customer.short_name'') %></td>
  	<% end %>
  	
    <% if has_action_right?(''show'',''projectx_projects'', prj) %>
  	  <td><%= link_to prj.name, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.project_path(prj.id)}"  %></td>
  	<% else %>
        <td><%= prt(prj, :name) %></td>
  	<% end %>
    <td><%= prt(prj, :project_num) %></td>
    <td><%= prt(prj, ''status.name'') if prj.status_id.present? %></td>
    <td><%= prt(prj, :start_date) %></td>
    <td><%= prt(prj, ''project_manager.name'') %></td>
    <td><%= prt(prj, ''project_task_template.name'') %></td>
    <% if has_action_right?(''show'',''projectx_contracts'', prj.contract) %>
        <td><%= link_to prj.contract.id, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.contract_path(prj.contract, {:project_id => prj.id})}"  %></td>
    <% else %>
        <td><%= prt(prj, ''contract.id'') %></td>
    <% end %>
    <td><%= prt(prj, ''customer.sales.name'') %></td>
    <% if has_action_right?(''show_payment_amount'',''projectx_projects'', prj.contract) %>
	    <td><%= prt(prj, ''contract.payment_total'') %></td>
  	<% else %>
	    <td><%= prt(prj, ''contract.payment_percent'') %></td>
  	<% end %>
    <td><%= t(prt(prj, :expedite).to_s) %></td>
    <td><%= prt(prj, :estimated_delivery_date) %></td>
    <td><%= prt(prj, :delivery_date) %></td>

    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{edit_project_path(prj)}" , :class => BUTTONS_CLS[''action'']   if has_action_right?(''update'', params[:controller], prj )  %></td>
    <td><%= link_to t(''Tasks''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(project_tasks_path(prj, :parent_record_id => prj, :parent_resource => ''projectx/projects''))}", :class => BUTTONS_CLS[''action'']  if has_action_right?(''index_task'', params[:controller], prj ) %></td>
    <td><%= link_to t(''Payments''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(contract_payments_path(prj.contract, :parent_record_id => prj.contract, :parent_resource => ''projectx/contracts''))}", :class => BUTTONS_CLS[''action'']  if has_action_right?(''index_payment'', params[:controller], prj.contract ) %></td>
  </tr>
<% end %>
</table>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']  %>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''New Project''), SUBURI + "/authentify/view_handler?index=1&url=#{new_project_path}", :class => BUTTONS_CLS[''action''] if has_action_right?(''create'', params[:controller]) %>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''Search''), SUBURI + "/authentify/view_handler?index=1&url=#{search_projects_path}", :class => BUTTONS_CLS[''action''] if has_action_right?(''search'', params[:controller]) %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''Stats''), SUBURI + "/authentify/view_handler?index=1&url=#{stats_projects_path}", :class => BUTTONS_CLS[''action''] if has_action_right?(''stats'', params[:controller]) %>
    </th>
  </tr>
</table>
',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(34,'projectx',NULL,'task_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%=t(''TaskName'') %></th>
    <th><%=t(''Project'') %></th>
    <th><%=t(''TaskStatus'') %></th> 
    <th><%=t(''StartDate'') %></th>
    <th><%=t(''FinishDate'') %></th>     
    <th><%=t(''Completed'') %></th>
    <th><%=t(''LastUpdatedBy'') %></th>
    <th></th>
    
  </tr>

<% @tasks.each do |r| %>
  <tr>
  	
  	<td><%= link_to r.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.project_task_path(r.project,r)}" %></td>
  	<td><%= prt(r, ''task_template.task_definition.name'' ) %></td>
  	<td><%= prt(r, ''project.name'') %></td>
  	<td><%= prt(r, ''task_status_definition.name'') %></td>
  	<td><%= r.start_date.strftime("%Y/%m/%d") %></td>
  	<td><%= r.finish_date.strftime("%Y/%m/%d") %></td>  	           
    <td><%= prt(r, :completed) %></td>
    <td><%= prt(r, ''last_updated_by.name'') %></td>  
    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.edit_project_task_path(r.project, r, :parent_record_id => r.project, :parent_resource => ''projectx/projects''))}", :class => BUTTONS_CLS[''action'']  if has_action_right?(''update'', params[:controller], r) %> </td>

  </tr>
<% end %>

</table>
  <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action''] %>&nbsp;
  <%= link_to t(''New Task''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.new_project_task_path(@project, :parent_record_id => @project.id, :parent_resource => ''projectx/projects''))}", :class => BUTTONS_CLS[''action''] if @project && has_action_right?(''create'', params[:controller], @project) %>
',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(35,'projectx',NULL,'type_definition_index_view','<table class="table table-striped">
    <tr>
      <th><%= t(''Create Date'') %></th>
      <th><%= t(''Name'') %></th>
      <th><%= t(''Brief Note'') %></th>
      <th><%= t(''Ranking Order'') %></th>
      <th><%= t(''Active'') %></th>
      <th><%= t(''Entered By'') %></th>
      <th></th>
      <th></th>
      <th></th>
    </tr>

    <% @type_definitions.each do |cate| %>
        <tr>
          <td><%= (cate.created_at + 8.hours).strftime("%Y/%m/%d")%></td>
          <td><%= cate.name %></td>
          <td><%= cate.brief_note %></td>
          <td><%= cate.ranking_order %></td>
          <td><%= cate.active ? ''是'' : ''否'' %></td>
          <td><%= cate.last_updated_by.name %></td>
          <td><%= link_to t(''Edit''), edit_type_definition_path(cate, :format => :js), 
                           :remote => true, :class => BUTTONS_CLS[''action''] if has_action_right?(''update'', ''projectx/type_definitions'', cate) %></td>
          <td><%= link_to ''新项目任务模版'', SUBURI + "/authentify/view_handler?index=1&url=#{new_type_definition_project_task_template_path(cate)}", :class => BUTTONS_CLS[''action''] if has_action_right?(''new'', ''projectx/project_task_templates'') %></td>
          <td><%= link_to ''项目任务模版一览'', SUBURI + "/authentify/view_handler?index=1&url=#{type_definition_project_task_templates_path(cate)}", :class => BUTTONS_CLS[''action''] if has_action_right?(''index'', ''projectx/project_task_templates'') %></td>
        </tr>
    <% end %>

  </table>

	<table class="table table-striped">
	  <tr>
	    <th>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']  %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<%= link_to "新项目类型", new_type_definition_path( :format => :js), :remote => true, 
               :id => ''new_log_link'', :class => BUTTONS_CLS[''action''] if has_action_right?(''create'', ''projectx/type_definitions'') %>
	    </th>
	  </tr>
	</table>',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(36,'projectx',NULL,'task_request_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%=t(''Task'') %></th>
    <th><%=t(''RequestName'') %></th>
    <th><%=t(''RequestDate'') %></th>
    <th><%=t(''FinishDate'') %></th>   
    <th><%=t(''RequestStatus'') %></th>   
    <th><%=t(''Completed'') %></th>
    <th><%=t(''RequestedBy'') %></th>
    <th></th>
    
  </tr>

<% @task_requests.each do |r| %>
  <tr>
  	
  	<td><%= link_to r.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.task_task_request_path(r.task,r)}" %></td>
  	<td><%= prt(r, ''task.task_template.task_definition.name'') %></td>
  	<td><%= prt(r, :name) %></td>
  	<td><%= r.request_date.strftime("%Y/%m/%d") %></td>
  	<td><%= r.expected_finish_date.strftime("%Y/%m/%d") %></td>
  	<td><%= prt(r, ''request_status.name'') %></td>       
    <td><%= t(prt(r, :completed).to_s) %></td>
    <td><%= prt(r, ''requested_by.name'') %></td>  
    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.edit_task_task_request_path(r.task, r, :parent_record_id => r.task, :parent_resource => ''projectx/tasks''))}", :class => BUTTONS_CLS[''action'']  if has_action_right?(''update'', params[:controller], r) %> </td>

  </tr>
<% end %>
</table>
  <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']  %>',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(37,'projectx',NULL,'payment_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%= t(''Contract Id'') %></th>
    <th><%= t(''Paid Amount'') %></th>
    <th><%= t(''Payment Type'') %></th>
    <th><%= t(''Payment Description'') %></th>
    <th><%= t(''Received By'') %></th>
    <th><%= t(''Received Date'') %></th>
    <th><%= t(''Project Name'') %></th>
    <th><%= t(''Project Number'') %></th>
    <th><%= t(''Project Status'') %></th>
    <th><%= t(''Sales'') %></th>
    <th><%#= t(''Completion %'') %></th>
    <th><%= t(''Payment %'') %></th>
    <th><%= t(''Est Delivery Date'') %></th>
    <th><%= t(''Delivered on'') %></th>
    <th></th>
  </tr>
<% models.each do |paymnt| %>
  <tr>
    <% if has_action_right?(''show'',''projectx_payments'', paymnt ) %>
        <td><%= link_to paymnt.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.contract_payment_path(paymnt.contract, paymnt, :parent_record_id => paymnt.contract, :parent_resource => ''projectx/contracts''))}"  %></td>
    <% else %>
        <td><%= prt(paymnt, :id) %></td>
    <% end %>

  	<% if has_action_right?(''show_contract'',''projectx_payments'', paymnt.contract ) %>
  	  <td><%= link_to paymnt.contract.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.project_contract_path(paymnt.contract.project, paymnt.contract_id, :parent_record_id => paymnt.contract.project, :parent_resource => ''projectx/projects''))}"  %></td>
  	<% else %>
  	  <td><%= prt(paymnt, ''contract_id'') %></td>
  	<% end %>
    
    <td><%= prt(paymnt, :paid_amount) %></td>
    <td><%= prt(paymnt, :payment_type) %></td>
    <td><%= prt(paymnt, :payment_desc) %></td>
    <td><%= prt(paymnt, ''received_by.name'') %></td>
    <td><%= prt(paymnt, :received_date) %></td>
    <% if has_action_right?(''show'',''projectx_projects'', paymnt.contract.project) %>
  	  <td><%= link_to paymnt.contract.project.name, SUBURI + "/authentify/view_handler?index=1&url=#{projectx.project_path(paymnt.contract.project.id)}"  %></td>
  	<% else %>
        <td><%= prt(paymnt, ''contract.project.name'') %></td>
  	<% end %>
    <td><%= prt(paymnt, ''contract.project.project_num'') %></td>
    <td><%= prt(paymnt, ''contract.project.status.name'') %></td>
    <td><%= prt(paymnt, ''contract.project.customer.sales.name'') %></td>
    <td><%#= prt(paymnt, ''contract.project.completion_percent'') %></td>
    <td><%= prt(paymnt, ''contract.payment_percent'') %></td>
    <td><%= prt(paymnt, ''contract.project.estimated_delivery_date'') %></td>
    <td><%= prt(paymnt, ''contract.project.delivery_date'') %></td>

    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(edit_contract_payment_path(paymnt.contract, paymnt, :parent_record_id => paymnt.contract, :parent_resource => ''projectx/contracts''))}", :class => BUTTONS_CLS[''action'']  if has_action_right?(''update'', params[:controller], paymnt ) %></td>
   </tr>
<% end %>
</table>
<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']  %>
    	<%= link_to t(''Search Payment''), SUBURI + "/authentify/view_handler?index=1&url=#{search_payments_path}", :class => BUTTONS_CLS[''action''] %>
    	<%= link_to t(''New Payment''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(new_contract_payment_path(@contract, :parent_record_id => @contract, :parent_resource => ''projectx/contracts''))}", :class => BUTTONS_CLS[''action''] if @contract %>
    </th>
  </tr>
</table>
',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(38,'customerx',NULL,'customer_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%= t(''CustomerName'') %></th>
    <th><%= t(''ShortName'') %></th>
    <th><%= t(''SinceDate'') %></th>
    <th><%= t(''Phone'') %></th>
    <th><%= t(''Active'') %></th>
    <th><%= t(''CustomerStatusCategory'') %></th>
    <th><%= t(''Sales'') %></th>
    <th><%= t(''LastContactDate'') %></th>
    <th></th>
    <th></th>
    <th></th>
 
  </tr>

<% @customers.each do |cust| %>
  <tr>
  	<% if has_action_right?(''show'', ''customerx_customers'', cust) %>
  	  <td><%= link_to cust.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{customer_path(cust)}"  %></td>
  	<% else %>
  	  <td><%= cust.id %></td>
  	<% end %>
  	<td><%= prt(cust, :name) %></td>
    <td><%= prt(cust, :short_name) %></td>
    <td><%= cust.since_date.strftime("%Y/%m/%d") %></td>
    <td><%= prt(cust, :phone) %></td>
    <td><%= prt(cust, :active) %></td>
    <td><%= prt(cust, ''customer_status_category.name'') %></td>
    <td><%= prt(cust, ''sales.name'') %></td>    
    <td><%= return_last_contact_date(cust.id).strftime("%Y/%m/%d") if return_last_contact_date(cust.id).present? %></td> 
    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{edit_customer_path(cust)}" , :class => BUTTONS_CLS[''action''] if has_action_right?(''update'', params[:controller], cust) %></td>
    <td><%= link_to t(''CommRecords''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(customer_customer_comm_records_path(cust, :parent_record_id => cust, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] %></td>
    <td><%= link_to t(''SalesLeads''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(customer_sales_leads_path(cust, :parent_record_id => cust, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if find_config_const(''sales_lead'', ''customerx'').present? && find_config_const(''sales_lead'', ''customerx'') == ''true''  %></td>
  </tr>
<% end %>
</table>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']   %>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to ''输入客户'', SUBURI + "/authentify/view_handler?index=1&url=#{new_customer_path}", :class => BUTTONS_CLS[''action''] if has_action_right?(''create'', params[:controller]) %>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''Search''), SUBURI + "/authentify/view_handler?index=1&url=#{search_customers_path}", :class => BUTTONS_CLS[''action''] %>
    </th>
  </tr>
</table>',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(39,'customerx',NULL,'customer_comm_record_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%= t(''CommDate'') %></th>
    <th><%= t(''CustomerShortName'') %></th>
    <th><%= t(''Subject'') %></th>
    <th><%= t(''Content'') %></th>
    <th><%= t(''Via'') %></th>
    <th><%= t(''CommCategory'') %></th>
    <th><%= t(''Reporter'') %></th>
    <th></th>
 
  </tr>

<% @customer_comm_records.each do |r| %>
  <tr>
  	<% if has_action_right?(''show'', ''customerx_customer_comm_records'',r) %>
  	  <td><%= link_to r.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{customerx.customer_customer_comm_record_path(r.customer,r)}" %></td>
  	<% else %>
  	  <td><%= r.id %></td>
  	<% end %>
  	<td><%= r.comm_date.strftime("%Y/%m/%d") %></td>
    <td><%= prt(r, ''customer.short_name'') %></td>   
    <td><%= prt(r, :subject ) %></td>
    <td><%= prt(r, :content)[0..40] %></td>
    <td><%= prt(r, :via) %></td>
    <td><%= prt(r, ''comm_category.name'') %></td>
    <td><%= prt(r, ''reported_by.name'') %></td>    
    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(customerx.edit_customer_customer_comm_record_path(r.customer, r, :parent_record_id => r.customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if has_action_right?(''update'', params[:controller], r) %></td>

  </tr>
<% end %>
</table>
<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action'']  %>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''New Customer Comm Record''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(customerx.new_customer_comm_record_path(:parent_record_id => @customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if @customer.nil? && has_action_right?(''new'', params[:controller]) %>&nbsp;&nbsp;&nbsp;
        <%= link_to t(''New Customer Comm Record''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(customerx.new_customer_customer_comm_record_path(@customer, :parent_record_id => @customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if @customer.present? && has_action_right?(''new'', params[:controller]) %>
    </th>
  </tr>
</table>',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(40,'customerx',NULL,'sales_lead_index_view','<table class="table table-striped">
  <tr>
    <th>#</th>
    <th><%=t(''EnterDate'') %></th>
    <th><%=t(''CustomerShortName'') %></th>
    <th><%=t(''Subject'') %></th>
    <th><%=t(''LeadDetail'') %></th>
    <th><%=t(''LeadQuality'') %></th>
    <th><%=t(''MakeSale'') %></th>
    <th>成单额（￥）</th>
    <th><%=t(''Provider'') %></th>
    <th></th>
 
  </tr>

<% @sales_leads.each do |r| %>
  <tr>
  	<% if has_action_right?(''show'', ''customerx_sales_leads'', r) %>
  	  <td><%= link_to r.id.to_s, SUBURI + "/authentify/view_handler?index=1&url=#{customer_sales_lead_path(r.customer,r)}" %></td>
  	<% else %>
  	  <td><%= r.id %></td>
  	<% end %>
  	<td><%= r.lead_date.strftime("%Y/%m/%d") %></td>
    <td><%= prt(r, ''customer.short_name'') %></td>   
    <td><%= prt(r, :subject) %></td>
    <td><%= prt(r, :lead_info)[0..40] %></td>
    <td><%= prt(r, :lead_quality) %></td>
    <td><%= prt(r, :sale_success) ? ''是'' : ''否'' %></td>
    <td><%= number_with_delimiter(prt(r, :initial_order_total)) %></td>
    <td><%= prt(r, ''provider.name'') %></td>    
    <td><%= link_to t(''Edit''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(edit_customer_sales_lead_path(r.customer, r, :parent_record_id => r.customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if has_action_right?(''update'', params[:controller], r) %></td>

  </tr>
<% end %>
</table>
<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :class => BUTTONS_CLS[''action''] %>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%= link_to ''输入Leads'', SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(new_sales_lead_path(parent_record_id => @customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if @customer.blank? && has_action_right?(''create'', params[:controller]) %>  
              &nbsp;&nbsp;&nbsp;
              <%= link_to ''输入Leads'', SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(new_customer_sales_lead_path(@customer, parent_record_id => @customer, :parent_resource => ''customerx/customers''))}", :class => BUTTONS_CLS[''action''] if @customer.present? && has_action_right?(''create'', params[:controller]) %>
  </th>
  </tr>
</table>',NULL,'2013-08-19 10:16:26','2013-08-19 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(41,'projectx',NULL,'payment_show_view','<h4><%= t(@title) %></h4>

<p>
  <b><%= t(''Paid Amount'') %></b>
  <%= @payment.paid_amount %>
</p>
<p>
  <b><%= t(''Payment Type'') %></b>
  <%= @payment.payment_type %>
</p>
  <p>
    <b><%= t(''Payment Description'') %></b>
    <%= @payment.payment_desc %>
  </p>
<p>
  <b><%= t(''Received Date'') %></b>
  <%= @payment.received_date %>
</p>
<p>
  <b><%= t(''Received By'') %></b>
  <%= @payment.received_by.name %>
</p>
<p>
  <b><%= t(''Contract Id'') %></b>
  <%= @contract.id %>
</p>
<p>
  <b><%= t(''Project Number'') %></b>
  <%= @contract.project.project_num %>
</p>
<p>
  <b><%= t(''Project Status'') %></b>
  <%= @contract.project.status.name %>
</p>
<p>
  <b><%= t(''Sales'') %></b>
  <%= @contract.project.sales.name %>
</p>
<p>
  <b><%= t(''Last Updated By'') %></b>
  <%= @payment.last_updated_by.name %>
</p>

<%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(42,'projectx',NULL,'project_show_view','<h4><%= t(@title) %></h4>

<p>
  <b><%= t(''Project Name'') %></b>
  <%= @project.name %>
</p>
<p>
  <b><%= t(''Project Number'') %></b>
  <%= @project.project_num %>
</p>
<p>
  <b><%= t(''Customer'') %></b>
  <%= @project.customer.name %>
</p>
<p>
  <b><%= t(''Status'') %></b>
  <%= @project.status.try(:name) if @project.status_id.present? %>
</p>
<p>
  <b><%= t(''Project Task Template'') %></b>
  <%= @project.project_task_template.name %>
</p>
<p>
  <b><%= t(''Sales'') %></b>
  <%= @project.customer.sales.name %>
</p>
<p>
  <b><%= t(''Last Updated By'') %></b>
  <%= @project.last_updated_by.name %>
</p>
<p>
    <b><%= t(''Start Date'') %></b>
    <%= @project.start_date %>
</p>
<p>
    <b><%= t(''Delivered Date'') %></b>
    <%= @project.delivery_date %>
</p>
<p>
    <b><%= t(''Estimated Delivered Date'') %></b>
    <%= @project.estimated_delivery_date %>
</p>
<p>
    <b><%= t(''Description'') %></b>
    <%= @project.project_desp %>
</p>
<p>
    <b><%= t(''Instruction'') %></b>
    <%= @project.project_instruction %>
</p>

<p>
    <b><%= t(''Project Manager'') %></b>
    <%= @project.project_manager.name if @project.project_manager_id.present? %>
</p>
<p>
    <b><%= t(''Expedite'') %></b>
    <%= @project.expedite %>
</p>

<p>
  <b><%= t(''LOG：'') %></b>
  <% return_logs(params[:controller].sub(''/'', ''_''), @project.id).order("created_at DESC").each do |t| %>
    <li><%= t.created_at.strftime("%Y/%m/%d") %>,&nbsp; <%= t.last_updated_by.name %>,&nbsp; <%= t.log %></li>
  <% end %>
</p>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''New Log''), SUBURI + commonx.new_log_path(:resource_id => @project.id, :resource_name => params[:controller], :subaction => ''project'',
    	     :format => :js), :remote => true, :id => ''new_log_link'' , :class => BUTTONS_CLS[''action''] if has_action_right?(''create_project'', ''commonx/logs'') %>
    </th>
  </tr>
</table>

<%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>
',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(43,'projectx',NULL,'task_request_show_view','<h4>任务申请内容 </h4>

<p>
  <b>任务名称:</b>
  <%= @task.task_template.task_definition.name %>
</p>
<p>
  <b>申请名称:</b>
  <%= @task_request.name %>
</p> 
<p>
  <b>申请人:</b>
  <%= @task_request.requested_by.name %>
</p> 
<p>
  <b>申请状态:</b>
  <%= @task_request.request_status.try(:name) if @task_request.request_status_id.present? %>
</p> 
<p>
  <b>申请日期:</b>
  <%= @task_request.request_date.strftime("%Y/%m/%d") %>
</p> 
<p>
  <b>预计完成日期:</b>
  <%= @task_request.expected_finish_date.strftime("%Y/%m/%d") %>
</p> 
<p>
  <b>加急:</b>
  <%= @task_request.expedite ? ''是'' : ''否'' %>
</p> 
<p>
  <b>完成:</b>
  <%= @task_request.completed ? ''是'' : ''否'' %>
</p> 

<p>
  <b>取消:</b>
  <%= @task_request.cancelled ? ''是'' : ''否'' %>
</p> 
<p>
  <b>输入/更新:</b>
  <%= @task_request.last_updated_by.name %>
</p>
<p>
  <b>LOG：</b>
  <% Commonx::Log.where(''resource_id = ? AND resource_name = ?'', @task_request.id, params[:controller].sub(''/'', ''_'')).order("created_at DESC").each do |t| %>
    <li><%= t.created_at.strftime("%Y/%m/%d") %>, &nbsp;<%= t.last_updated_by.name %>, &nbsp; <%= t.log %></li>
  <% end %>
</p>

	<table class="table table-striped">
	  <tr>
	    <th>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    	<%= link_to t(''New Log''), SUBURI + commonx.new_task_request_log_path(:resource_id => @task_request.id, :resource_name => params[:controller], :subaction => ''task_request'', :format => :js), :remote => true, 
	                  :id => ''new_log_link'', :class => BUTTONS_CLS[''action''] if has_action_right?(''create_task_request'', ''commonx/logs'') %>
	    </th>
	  </tr>
	</table>

	<%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action'']%>',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(44,'projectx',NULL,'task_show_view','<h4>项目任务内容 </h4>

<p>
  <b>任务名称:</b>
  <%= @task.task_template.task_definition.name %>
</p>
<p>
  <b>项目名称:</b>
  <%= @project.name %>
</p>  
<p>
  <b>开始日期:</b>
  <%= @task.start_date.strftime("%Y/%m/%d") %>
</p> 
<p>
  <b>结束日期:</b>
  <%= @task.finish_date.strftime("%Y/%m/%d") %>
</p> 
<p>
  <b>项目任务状态:</b>
  <%= @task.task_status_definition.try(:name) if @task.task_status_definition_id.present? %>
</p> 
<p>
  <b>加急:</b>
  <%= @task.expedite ? ''是'' : ''否'' %>
</p> 
<p>
  <b>完成:</b>
  <%= @task.completed ? ''是'' : ''否'' %>
</p> 
<p>
  <b>跳过:</b>
  <%= @task.skipped ? ''是'' : ''否'' %>
</p> 
<p>
  <b>取消:</b>
  <%= @task.cancelled ? ''是'' : ''否'' %>
</p> 
<p>
  <b>输入/更新:</b>
  <%= @task.last_updated_by.name %>
</p>
<p>
  <b>LOG：</b>
  <% Commonx::Log.where(''resource_id = ? AND resource_name = ?'', @task.id, params[:controller].sub(''/'', ''_'')).order("created_at DESC").each do |t| %>
    <li><%= t.created_at.strftime("%Y/%m/%d") %>,&nbsp; <%= t.last_updated_by.name %>,&nbsp; <%= t.log %> </li>
  <% end %>
</p>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''New Request''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.new_task_task_request_path(@task, :parent_record_id => @task, :parent_resource => ''projectx/tasks''))}", :id => ''new_request_link'', 
    	              :class => BUTTONS_CLS[''action''] if @task.task_template.need_request && has_action_right?(''create'', ''projectx/task_requests'') %>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<%= link_to t(''Task Requests''), SUBURI + "/authentify/view_handler?index=1&url=#{CGI::escape(projectx.task_task_requests_path(@task, :parent_record_id => @task, :parent_resource => ''projectx/tasks''))}", :id => ''task_request_link'', 
    	              :class => BUTTONS_CLS[''action''] if @task.task_template.need_request && has_action_right?(''index'', ''projectx/task_requests'') %>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%= link_to t(''New Log''), SUBURI + commonx.new_log_path(:resource_id => @task.id, :resource_name => params[:controller], :subaction => ''task'', :format => :js), :remote => true, 
                          :id => ''new_log_link'', :class => BUTTONS_CLS[''action''] if has_action_right?(''create_task'', ''commonx/logs'') %>    	
    </th>
  </tr>
</table>

<%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(45,'customerx',NULL,'customer_show_view','<h4><%=t(''Customer Info'') %></h4>

<p>
  <b>名称:</b>
  <%= @customer.name %>
</p>
<p>
  <b>简称:</b>
  <%= @customer.short_name %>
</p>
<p>
  <b>联系信息:</b>
  <ul>
  <% @customer.contacts.order("created_at DESC").each do |c| %>
   <li><%= (c.created_at + 8.hours).strftime("%Y/%m/%d")%>&nbsp;<%= c.name %>&nbsp;<%=c.position if c.position.present? %>&nbsp;<%=c.cell_phone if c.cell_phone.present? %>&nbsp;
   	        <%=c.phone if c.phone.present? %>&nbsp;<%=c.email if c.email.present? %>&nbsp; <%=c.brief_note if c.brief_note.present? %></li>
  <% end %>
  </ul>
</p>
<p>
  <b>电话:</b>
  <%= @customer.phone %>
</p>
<p>
  <b>传真:</b>
  <%= @customer.fax %>
</p>
<p>
  <b>地址:</b>
  <%= @customer.address.province %><%= @customer.address.city_county_district%>,<%=@customer.address.add_line%>
</p>
<p>
  <b><%=t(''Shipping Instruction:'') %></b>
  <%= @customer.shipping_instruction %>
</p>
<p>
  <b><%=t(''Zone:'') %></b>
  <%= @customer.zone.zone_name %>
</p>
<p>
  <b>业务状态:</b>
  <%= @customer.customer_status_category.try(:name) if @customer.customer_status_category_id.present? %>
</p>
<p>
  <b>主营业务:</b>
  <%= @customer.main_biz %>
</p>
<p>
  <b>质量认证:</b>
  <%= @customer.quality_system.name if @customer.quality_system_id.present? %>
</p>
<p>
  <b>营业额:</b>
  <%= @customer.revenue %>
</p>
<p>
  <b>员工人数:</b>
  <%= @customer.employee_num %>
</p>
<p>
  <b><%=t(''CustomerTaste:'') %></b>
  <%= @customer.customer_taste %>
</p>
<p>
  <b><%=t(''CustomerEval:'') %></b>
  <%= @customer.customer_eval %>
</p>
<p>
  <b>注释:</b>
  <%= @customer.note %>
</p>
<p>
  <b>输入/更改:</b>
  <%= @customer.last_updated_by.name %>
</p>

  <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>
',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(46,'customerx',NULL,'customer_comm_record_show_view','<h4>客户交流记录内容</h4>
 
<p class="notice"><%= notice %></p>

<p>
  <b>客户名称:</b>
  <%= @customer.name %>
</p> 

<p>
  <b>联系人:</b>
  <%= @customer_comm_record.reported_by.name %>
</p>

<p>
  <b>联系日期:</b>
  <%= @customer_comm_record.comm_date.strftime("%Y/%m/%d") %>
</p> 
<p>
  <b>联系分类:</b>
  <%= @customer_comm_record.comm_category.try(:name) if @customer_comm_record.comm_category_id.present? %>
</p> 
<p>
  <b>关于:</b>
  <%= @customer_comm_record.subject %>
</p>
 
<p>
  <b>客户联系人名&电话:</b>
  <%= @customer_comm_record.contact_info %>
</p>
<p>
  <b>内容:</b>
  <%= @customer_comm_record.content %>
</p>
 
<p>
  <b>联系方式:</b>
  <%= @customer_comm_record.via %>
</p>
<p>
  <b>删除:</b>
  <%= @customer_comm_record.void %>
</p> 
<p>
  <b>输入/更改:</b>
  <%= @customer_comm_record.last_updated_by.name %>
</p>
<p>
  <b>Logs:</b>	
    <ul>
  <% Commonx::Log.where(''resource_id = ? AND resource_name = ?'', @customer_comm_record.id, params[:controller].sub(''/'', ''_'')).order("created_at DESC").each do |p| %>
    <li>
    <%= (p.created_at + 8.hours).strftime("%Y-%m-%d").to_s + '', '' + p.last_updated_by.name + ''， '' + p.log %>
    </li>
  <% end %>
  </ul>
</p>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%= link_to ''新Log'', SUBURI + commonx.new_log_path(:resource_id => @customer_comm_record.id, :resource_name => params[:controller], :subaction => ''customer_comm_record'', :format => :js), 
               :remote => true, :id => ''new_log_link'', :class => BUTTONS_CLS[''action''] if has_action_right?(''create_customer_comm_record'', ''commonx_logs'') %>    </th>
  </tr>
</table>
<%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(47,'customerx',NULL,'sales_lead_show_view','<h4><%=t(''Sales Lead Info'') %></h4>

<p>
  <b><%=t(''Customer:'') %></b>
  <%= @customer.name %>
</p>
<p>
  <b><%=t(''Zone:'') %></b>
  <%= @customer.zone.zone_name %>
</p>
<p>
  <b><%=t(''Subject:'') %></b>
  <%= @sales_lead.subject %>
</p>
<p>
  <b><%=t(''EnterDate:'') %></b>
  <%= (@sales_lead.created_at + 8.hours).strftime("%Y/%m/%d") %>
</p>
<p>
  <b><%=t(''Provider:'') %></b>
  <%= @sales_lead.provider.name %>
</p>
<p>
  <b><%=t(''LeadInfo:'') %></b>
  <%= @sales_lead.lead_info %>
</p>
<p>
  <b><%=t(''ContactInstruction:'') %></b>
  <%= @sales_lead.contact_instruction %>
</p>
<p>
  <b><%=t(''LeadQuality(1..10):'') %></b>
  <%= @sales_lead.lead_quality %>
</p>
<p>
  <b><%=t(''LeadAccuracy(1..10):'') %></b>
  <%= @sales_lead.lead_accuracy %>
</p>

<p>
  <b><%=t(''SaleSuccess:'') %></b>
  <%= @sales_lead.sale_success %>
</p>
<% if @sales_lead.sale_success %>
<p>
  <b>成单金额￥:</b>
  <%= number_with_delimiter(@sales_lead.initial_order_total) %>
</p>
<% end %>
<p>
  <b><%=t(''LeadStatus:'') %></b>
  <%= @sales_lead.lead_status %>
</p>
<p>
  <b><%=t(''LeadSource:'') %></b>
  <%= @sales_lead.lead_source.name if @sales_lead.lead_source_id.present? %>
</p>
<p>
  <b>输入/更改:</b>
  <%= @sales_lead.last_updated_by.name %>
</p>
<p>
  <b><%=t(''Lead Logs:'') %></b>
  <ul>
<% Commonx::Log.where(''resource_id = ? AND resource_name = ?'', @sales_lead.id, params[:controller].sub(''/'', ''_'')).order("id DESC").each do |f| %>
  <li>
  <%= (f.created_at + 8.hours).strftime("%Y-%m-%d").to_s + '', '' + f.input_by.name + '', ''+ f.log %>
  </li>
<% end %>
</ul>
</p>

<table class="table table-striped">
  <tr>
    <th>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<%= link_to ''新Log'', SUBURI + commonx.new_log_path(:resource_id => @sales_lead.id, :resource_name => params[:controller], :subaction => ''sales_lead'', :format => :js), 
                              :remote => true, :id => ''new_log_link'', :class => BUTTONS_CLS[''action''] if has_action_right?(''create_sales_lead'', ''commonx_logs'') %>    </th>
  </tr>
</table>
  <%= link_to t(''Back''), SUBURI + "/authentify/view_handler?index=0", :id => ''close'', :class => BUTTONS_CLS[''action''] %>',NULL,'2013-08-23 10:16:26','2013-08-23 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(48,NULL,NULL,'app_application_view','<head>
	  <title><%= @title %></title>
	    <!--[if lt IE 9]>
	     <script src="http://html5shim.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
	    <![endif]-->
	  
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="stylesheet" type="text/css"/ >
	   <%= stylesheet_link_tag    "application", :media => "all" %>
	   <%= javascript_include_tag "application" %>
	   <%= csrf_meta_tags %>
	</head>
	<body id="<%= params[:controller].parameterize %>_controller">	
		<div id="container">
			<div id="header">
				<%= render ''layouts/header'' %>
			</div>
			<%= yield %>
		</div>
		<% flash.each do |name, msg| %>
			<div style="width:550px" class="alert alert-<%= name == :notice ? "error" : "success" %>">
			    <a class="close" data-dismiss="alert">&#215;</a>
			    <%= content_tag :div, msg, :id => "flash_#{name}" if msg.is_a?(String) %>
			</div>
		<% end %>
	</body>',NULL,'2013-08-24 10:16:26','2013-08-24 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(49,NULL,NULL,'app_header_view','<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="#">华研</a>
      <div class="nav-collapse">
        <ul class="nav">
          <li><%= link_to ''<i class="icon-home icon-white"></i> 主菜单''.html_safe, SUBURI + ''/user_menus'' %></li>
          <li><%= link_to ''<i class="icon-off icon-white"></i> 退出''.html_safe, SUBURI + ''/signout'' %></li>
        </ul>
      </div>
    </div>
  </div>
</div>',NULL,'2013-08-24 10:16:26','2013-08-24 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(50,NULL,NULL,'app_session_view','<head>
  <title>Login</title>
  <%= stylesheet_link_tag    "application" %>
  <%= javascript_include_tag "application" %>
  <%= csrf_meta_tags %>
</head>

<body id="login_field">

  <% flash.each do |name, msg| %>
    <%= content_tag :div, msg, :id => "flash_#{name}" %>
  <% end %>
  
<%= yield %>

</body>',NULL,'2013-08-24 10:16:26','2013-08-24 10:16:26',NULL);
INSERT INTO "authentify_engine_configs" VALUES(51,'',NULL,'search_params_view','       <%=render  :partial => ''search_params'', :locals => {f: f} %>

      <%= f.button :submit, t(''Search'') , :class =>''btn btn-primary'' %>',NULL,'2013-09-03','2013-09-03',NULL);
INSERT INTO "authentify_engine_configs" VALUES(52,'customerx',NULL,'contact_via','电话,会面,传真,电邮,即时信息IM,信件,互联网-如网络视频,其他',NULL,'2013-08-27','2013-08-27',NULL);
INSERT INTO "authentify_engine_configs" VALUES(53,'projectx','','project_edit_view','<%= f.input :name, :label => t(''Project Name'') %>
    <%= f.input :project_num, :label => t(''Project Number''), :readonly => true %>
    <%= f.input :customer_name_autocomplete,:input_html => { data: {autocomplete_source: SUBURI + customerx.autocomplete_customers_path}},
                :label => t(''Customer''), :placeholder => "输入关键字选择客户", :required => true %>
    <%= f.input :start_date, :label => t(''Start Date''), :as => :string %>
    <%= f.input :delivery_date, :label => t(''Delivery Date''), :as => :string %>
    <%= f.input :estimated_delivery_date, :label => t(''Estimated End Date''), :as => :string %>
    <%= f.input :project_task_template_id, :label => t(''Project Type''), :collection => return_project_types, :label_method => :name, :value_method => :id,
                        :include_blank => true %>
    <%= f.input :project_desp, :label => t(''Project Description''), :input_html => { :rows => 4} %>
    <%= f.input :project_instruction, :label => t(''Project Instruction''), :input_html => { :rows => 4} %>
    <% if readonly?(@project, ''status_id'') %>
      <%= f.input :status_name, :label => t(''Project Status''), :readonly => true, :input_html => {:value => @project.status.name} %>
    <% else %>
      <%= f.input :status_id, :label => t(''Project Status''), :collection => return_misc_definitions(''project_status''), :label_method => :name, :value_method => :id,
                        :include_blank => true %>
    <% end %>
    <% if readonly?(@project, ''project_manager_id'') %>
      <%= f.input :project_manager_name, :label => t(''Projet Manager''), :readonly => true, :input_html => {:value => @project.project_manager.name} if @project.project_manager_id.present? %>
    <% else %>
      <%= f.input :project_manager_id, :label => t(''Project Manager''), :collection => Authentify::UsersHelper.return_users(''manage'', ''projectx_projects''), :label_method => :name, :value_method => :id, 
                  :include_blank => true %>
    <% end %>
    <%= f.input :expedite, :label => t(''Expedite''), :as => :boolean %>
    <% if readonly?(@project, ''sales_id'') %>
      <%= f.input :sales_name, :label => t(''Sales''), :readonly => true, :input_html => {:value => @project.sales.name} %>
    <% else %>
      <%= f.input :sales_id, :label => t(''Sales''), :collection => Authentify::UsersHelper::return_users(''sales'', ''projectx_projects''), :label_method => :name, :value_method => :id,
                  :include_blank => true %>
    <% end %>
    <%= f.input :last_updated_by_name, :label => t(''Last Updated By''), :input_html => {:value => @project.last_updated_by.name}, :readonly => true %>
    <%= f.simple_fields_for(:contract)  {|builder| render(''contract'', :f => builder)}  %>
     

    <%= f.button :submit, t(''Save''), :class => BUTTONS_CLS[''action''] %>',NULL,'2013-09-07','2013-09-07',NULL);
INSERT INTO "authentify_engine_configs" VALUES(54,'projectx',NULL,'project_new_view','<%= f.input :name, :label => t(''Project Name'') %>
    <%= f.input :project_num, :label => t(''Project Number''), :readonly => true %>
    <%= f.input :customer_name_autocomplete,:input_html => { data: {autocomplete_source: SUBURI + customerx.autocomplete_customers_path}},
                :label => t(''Customer''), :placeholder => "输入关键字选择客户", :required => true %>
    <%= f.input :start_date, :label => t(''Start Date''), :as => :string %>
    <%#= f.input :project_date, :label => t(''Project Date''), :as => :string %>
    <%= f.input :estimated_delivery_date, :label => t(''Estimated End Date''), :as => :string %>
    <%= f.input :project_task_template_id, :label => t(''Project Task Template''), :collection => return_project_task_templates, :label_method => :name, :value_method => :id,
                        :include_blank => true %>
    <%= f.input :project_desp, :label => t(''Project Description''), :input_html => { :rows => 4} %>
    <%= f.input :project_instruction, :label => t(''Project Instruction''), :input_html => { :rows => 4} %>
    <%= f.input :status_id, :label => t(''Status''), :collection => return_misc_definitions(''project_status''), :label_method => :name, :value_method => :id,
                        :include_blank => true %>
    <%#= f.input :project_manager_id, :label => t(''Manager''), :collection => Authentify::UsersHelper.return_users(''manage'', ''projectx_projects'') %>
    <%= f.input :expedite, :label => t(''Expedite''), :as => :boolean %>
   <%= f.input :sales_id, :label => t(''Sales''), :collection => Authentify::UsersHelper::return_users(''sales'', ''projectx_projects''), :label_method => :name, :value_method => :id,
                :include_blank => true %>
   <%= f.simple_fields_for(:contract)  {|builder| render(''contract'', :f => builder)}  %>

    <%= f.button :submit, t(''Save''), :class => BUTTONS_CLS[''action''] %>',NULL,'2013-09-08','2013-09-08',NULL);
INSERT INTO "authentify_engine_configs" VALUES(55,'customerx',NULL,'customer_create_view',' <%= f.input :name, :label => t(''CompanyName:'') %>  
  <%= f.input :short_name, :label => t(''ShortName:''), :placeholder => ''4-8字'' %>
  <%= f.input :since_date, :label => t(''Since:''), :as => :string %>
  <%= f.input :phone, :label => t(''CompanyPhone:'') %> 
  <%= f.input :fax, :label => t(''CompanyFax:'') %> 
  联系人信息：
  <%= f.fields_for :contacts, @customer.contacts.first do |builder| %>
    <p>
      <%= render(''first_contact'', :f => builder)%>
    </p>  
  <% end %>     
  <p><%= link_to_add_fields "加联系人", f, :contacts %></p>
  <%= f.simple_fields_for :address do |builder| %>     
    <%= render(''address'', :f => builder)%>
  <% end %>
  <%= f.input :shipping_instruction, :label => ''发运要求：'', :input_html => {:rows => 4}%>
  <%= f.input :zone_id, :label => t(''Zone:''), :collection => return_zone, :label_method => :zone_name, :value_method => :id, 
                        :include_blank => true  %> 
  <%= f.input :customer_status_category_id, :label => t(''BizStatus:''), :collection => return_customer_status_category, :label_method => :name, :value_method => :id %>     
  <%= f.input :quality_system_id, :collection => return_quality_system, :label => t(''QualitySystem:''),
                                  :label_method => :name, :value_method => :id, :include_blank => true %>  
  <%= f.input :web, :label => t(''Web:'') %>
  <%= f.input :employee_num, :label => t(''EmployeeNum:'') %> 
  <%= f.input :revenue, :label => t(''Revenue:''), :hint => ''注明单位'' %> 
  <%= f.input :main_biz, :label => t(''MainBiz：''), :input_html => { :rows => 4} %>   
  <%= f.input :customer_taste, :label => t(''CustomerTaste:''), :input_html => { :rows => 4} %>   
  <%= f.input :customer_eval, :label => t(''CustomerEval:''), :input_html => { :rows => 4} %> 
  <%= f.input :sales_id, :label => t(''Sales:''), :collection => Authentify::UsersHelper.return_users(''create'', ''customerx_customers'') %>        
  <%= f.input :note, :label => t(''Note:''), :input_html => { :rows => 4} %>        
  
  <%= f.button :submit, t(''Save'') , :class => BUTTONS_CLS[''action''] %>  ',NULL,'2013-09-08','2013-09-08',NULL);
INSERT INTO "authentify_engine_configs" VALUES(56,'customerx',NULL,'customer_update_view','<%= f.input :name, :label => t(''CompanyName:''), :readonly => readonly?(@customer, ''name'') %>  
  <%= f.input :short_name, :label => t(''ShortName''), :placeholder => ''4-8字'', :readonly => readonly?(@customer, ''short_name'') %>
  <%= f.input :since_date, :label => t(''Since:''), :as => :string, :readonly => readonly?(@customer, ''since_date'') %>
  <%= f.input :phone, :label => t(''CompanyPhone:''), :readonly => readonly?(@customer, ''phone'') %> 
  <%= f.input :fax, :label => t(''CompanyFax:''), :readonly => readonly?(@customer, ''fax'') %>  
 联系人信息：
  <%= f.fields_for :contacts, @customer.contacts.first do |builder| %>
    <p><%= render(''first_contact'', :f => builder)%></p>  
  <% end %>     
  <p><%= link_to_add_fields "加联系人", f, :contacts %></p>
  <%= f.simple_fields_for :address do |builder| %>     
    <%= render(''address'', :f => builder)%>
  <% end %>      
  <%= f.input :shipping_instruction, :label => ''发运要求：'', :input_html => {:rows => 4}, :readonly => readonly?(@customer, ''shipping_instruction'') %>
  <%= f.input :zone_name, :label => t(''Zone:''), readonly => true, :required => false, :input_html => {:value => @customer.zone.name} if readonly?(@customer, ''zone_id'') %>
  <%= f.input :zone_id, :label => t(''Zone:''), :collection => return_zone, :label_method => :zone_name, :value_method => :id unless readonly?(@customer, ''zone_id'') %>
  <%= f.input :customer_status_category_id, :label => t(''BizStatus:''), :collection => return_customer_status_category, :label_method => :name, :value_method => :id unless readonly?(@customer, ''customer_status_category_id'') %>
  <%= f.input :customer_status_category_name, :label => t(''BizStatus:''), :readonly => true, :required => false, :input_html => {:value => @customer.customer_status_category.name} if readonly?(@customer, ''customer_status_category_id'') %>     
  <%= f.input :quality_system_id, :collection => return_quality_system, :label => t(''QualitySystem:''),
                                  :label_method => :name, :value_method => :id, :include_blank => true unless readonly?(@customer, ''quality_system_id'') %>  
  <%= f.input :quality_system_name, :readonly => true, :required => false, :input_html => {:value => @customer.quality_system_id.present? ? @customer.quality_system.name : '''' } if readonly?(@customer, ''quality_system_id'') %> 
  <%= f.input :web, :label => t(''Web:''), :readonly => readonly?(@customer, ''web'') %>
  <%= f.input :employee_num, :label => t(''EmployeeNum:''), :readonly => readonly?(@customer, ''employee_num'') %> 
  <%= f.input :revenue, :label => t(''Revenue:''), :hint => ''注明单位'', :readonly => readonly?(@customer, ''revenue'') %> 
  <%= f.input :main_biz, :label => t(''MainBiz：''), :input_html => { :rows => 4}, :readonly => readonly?(@customer, ''main_biz'') %>   
  <%= f.input :customer_taste, :label => t(''CustomerTaste:''), :input_html => { :rows => 4}, :readonly => readonly?(@customer, ''customer_taste'') %>   
  <%= f.input :customer_eval, :label => t(''CustomerEval:''), :input_html => { :rows => 4}, :readonly => readonly?(@customer, ''customer_eval'') %> 
  <% if has_action_right?(''activate'', ''customerx_customers'', @customer) %>
    <%= f.input :active, :label => t(''Active:''), :collection => [[''Yes'', true], [''No'', false]] %>
  <% else %>
    <%= f.input :active_noupdate, :label => t(''Active:''), :readonly => true, :as => :string %>
  <% end %>
  <%= f.input :sales_id, :label => t(''Sales:''), :collection => Authentify::UsersHelper::return_users(''create'', ''customerx_customers'') unless readonly?(@customer, ''sales_id'') %>        
  <%= f.input :sales_name, :label => t(''Sales:''), :readonly => true, :required => false, :input_html => {:value => @customer.sales.name} if readonly?(@customer, ''sales_id'') %>
  <%= f.input :note, :label => t(''Note:''), :input_html => { :rows => 4}, :readonly => readonly?(@customer, ''note'') %>        
  
  <%= f.button :submit, t(''Save''), :class => BUTTONS_CLS[''action''] %>  ',NULL,'2013-09-08','2013-09-08',NULL);
INSERT INTO "authentify_engine_configs" VALUES(57,'',NULL,'production_smtp_setting',' {  
    :address              => "email-smtp.us-east-1.amazonaws.com",  
    :port                 => 25,    
    :user_name            => "AKIAJH3VK5WSIW6AVVNQ",  
    :password             => "Au1z7gU4FaAjklaXHR5WYJnpzW/e55kcYvBH+iVlB92P",  
    :authentication       => :plain,
    :enable_starttls_auto => false
  }',NULL,'2013-09-15 15:00:00.000','2013-09-15 00:00:00.000','For production smtp server setup');
INSERT INTO "authentify_engine_configs" VALUES(58,'',NULL,'development_smtp_setting',' {  
   :address              => "marsonso.startlogic.com",  
    :port                 => 587,    
    :user_name            => "customcutter@marsonsourcing.com",  
    :password             => "delKest231",  
    :authentication       => :plain,
    :enable_starttls_auto => false
  }',NULL,'2013-09-15 15:00:00.000','2013-09-15 00:00:00.000','For development smtp server setup');
INSERT INTO "authentify_engine_configs" VALUES(59,'',NULL,'stats_params_view','     <p><%= f.input :time_frame_s, :label => t(''Time Frame''), :collection => eval(@search_stat.time_frame), :include_blank => false  %></p>
   
      <%=render  :partial => ''search_params'', :locals => {f: f} %>

      <%= f.button :submit, t(''Stats'') , :class =>''btn btn-primary'' %>',NULL,'2013-09-03','2013-09-03',NULL);
INSERT INTO "authentify_engine_configs" VALUES(60,NULL,NULL,'forgot_password','true',NULL,'2013-09-15 00:00:00.000','2013-09-15 00:00:00.000',NULL);
INSERT INTO "authentify_engine_configs" VALUES(61,NULL,NULL,'noreply_email','noreply@nbhy.com',NULL,'2013-09-15 00:00:00.000','2013-09-15 00:00:00.000',NULL);
INSERT INTO "authentify_engine_configs" VALUES(62,NULL,NULL,'piece_unit','piece, set',NULL,'','',NULL);
DROP TABLE IF EXISTS "authentify_group_types";
CREATE TABLE "authentify_group_types" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
INSERT INTO "authentify_group_types" VALUES(1,'employee','','',NULL);
DROP TABLE IF EXISTS "authentify_role_definitions";
CREATE TABLE "authentify_role_definitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "brief_note" varchar(255), "last_updated_by_id" integer, "manager_role_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authentify_role_definitions" VALUES(1,'管理',NULL,NULL,NULL,'','');
INSERT INTO "authentify_role_definitions" VALUES(2,'市场/业务',NULL,NULL,1,'','');
INSERT INTO "authentify_role_definitions" VALUES(3,'评估审核',NULL,NULL,1,'','');
INSERT INTO "authentify_role_definitions" VALUES(4,'办公室',NULL,NULL,1,'','');
INSERT INTO "authentify_role_definitions" VALUES(5,'财务',NULL,NULL,1,'','');
INSERT INTO "authentify_role_definitions" VALUES(6,'admin','系统管理员',NULL,NULL,'','');
DROP TABLE IF EXISTS "authentify_sessions";
CREATE TABLE "authentify_sessions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "session_id" varchar(255) NOT NULL, "data" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authentify_sessions" VALUES(364,'9cf64c2c0844113d80df0b5ab3426a8e','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzARQLcPAY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:15:14.225495','2013-10-08 01:15:14.225495');
INSERT INTO "authentify_sessions" VALUES(366,'31cea5b76e69b097ac01d887155ed059','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAoo3aQgY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:16:46.041609','2013-10-08 01:16:46.041609');
INSERT INTO "authentify_sessions" VALUES(368,'a23e2f7156a181616ad100c8a3d16a05','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzA4OKVagY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:26:41.757008','2013-10-08 01:26:41.757008');
INSERT INTO "authentify_sessions" VALUES(370,'de1c967a00aa7336478edf4887becf4e','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAXShHcwY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:28:52.583160','2013-10-08 01:28:52.583160');
INSERT INTO "authentify_sessions" VALUES(372,'05cec88c49fac6408c48652666a9fc71','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAzhMHjwY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:35:48.574896','2013-10-08 01:35:48.574896');
INSERT INTO "authentify_sessions" VALUES(374,'e91eb22e992ae61f8f67063eb87b07fb','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAc8yIkwY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:36:56.673693','2013-10-08 01:36:56.673693');
INSERT INTO "authentify_sessions" VALUES(376,'44ab91d9eb1e34f8dc69d521920e9b7a','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAF6MopAY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:41:02.698158','2013-10-08 01:41:02.698158');
INSERT INTO "authentify_sessions" VALUES(378,'00b388c06b1049e800bf258e2368d5ed','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzAGZ9XzAY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:51:05.599548','2013-10-08 01:51:05.599548');
INSERT INTO "authentify_sessions" VALUES(380,'d712cb19cb0275599b34afc21f3b7d97','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0BZRzArcln6wY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 01:58:54.629460','2013-10-08 01:58:54.629460');
INSERT INTO "authentify_sessions" VALUES(382,'583673b62790abaeb6a9815a8de1ac81','BAh7DDoOdXNlcl9uYW1lSSIL5qKF5piGBjoGRVQ6DHVzZXJfaXAiDjEyNy4w
LjAuMToMdXNlcl9pZGkHOg5sYXN0X3NlZW5JdToJVGltZQ0DZRzA763JWgY6
CXpvbmVJIghVVEMGOwZUOhN1c2VyX3ByaXZpbGVnZW86M0F1dGhlbnRpZnk6
OlVzZXJQcml2aWxlZ2VIZWxwZXI6OlVzZXJQcml2aWxlZ2UNOg1AdXNlcl9p
ZGkHOhRAdXNlcl9ncm91cF9pZHNbBmkGOhNAdXNlcl9yb2xlX2lkc1sGaQY6
E0BzdWJfZ3JvdXBfaWRzWxBpB2kIaQlpCmkLaQxpDWkOaQ9pEGkROhJAc3Vi
X3JvbGVfaWRzWwlpB2kIaQlpCjoYQHVzZXJfbW9kdWxlX2dyb3Vwc3sAOhBA
dXNlcl96b25lc1sGSSIR5a6B5rOi5Y2O56CUBjsGVDoTQHVzZXJfem9uZV9p
ZHNbBmkGSToR5Y2O56CU566h55CGBjsGVFQ6DWVtcGxveWVlVA==
','2013-10-08 03:22:44.733416','2013-10-08 03:22:44.733416');
INSERT INTO "authentify_sessions" VALUES(383,'c1b3da43d4a335f9a2f6663e8c7e02b5','BAh7EkkiDnVzZXJfbmFtZQY6BkVGSSIL5qKF5piGBjsAVEkiDHVzZXJfaXAG
OwBGIg4xMjcuMC4wLjFJIgx1c2VyX2lkBjsARmkHSSIObGFzdF9zZWVuBjsA
Rkl1OglUaW1lDQNlHMBwmjhnBjoJem9uZUkiCFVUQwY7AFRJIhN1c2VyX3By
aXZpbGVnZQY7AEZvOjNBdXRoZW50aWZ5OjpVc2VyUHJpdmlsZWdlSGVscGVy
OjpVc2VyUHJpdmlsZWdlDToNQHVzZXJfaWRpBzoUQHVzZXJfZ3JvdXBfaWRz
WwZpBjoTQHVzZXJfcm9sZV9pZHNbBmkGOhNAc3ViX2dyb3VwX2lkc1sQaQdp
CGkJaQppC2kMaQ1pDmkPaRBpEToSQHN1Yl9yb2xlX2lkc1sJaQdpCGkJaQo6
GEB1c2VyX21vZHVsZV9ncm91cHN7ADoQQHVzZXJfem9uZXNbBkkiEeWugeaz
ouWNjueglAY7AFQ6E0B1c2VyX3pvbmVfaWRzWwZpBkkiEeWNjueglOeuoeeQ
hgY7AFRUSSINZW1wbG95ZWUGOwBGVEkiDnBhZ2Vfc3RlcAY7AEZpCEkiCnBh
Z2UxBjsARkkiEC91c2VyX21lbnVzBjsAVEkiEF9jc3JmX3Rva2VuBjsARkki
MVhBQ1NvTnZDM042cVIrOEhhaVZhZjE0enhOZ3RMTm9nSjZBdDZCcjZQQk09
BjsARkkiGWNvbXBhbnlfZGlzcGxheV9pbmZvBjsARm86NkF1dGhlbnRpZnk6
OkF1dGhlbnRpZnlVdGlsaXR5OjpDb21wYW55RGlzcGxheUluZm8LOhdAY29t
cGFueV9sb2dvX25hbWVJIgAGOwBUOhZAY29tcGFueV9sb2dvX3VybDA6FUBm
b3Jnb3RfcGFzc3dvcmRJIgl0cnVlBjsAVDoRQHJlbWVtYmVyX21lMDoSQGxv
Z2luX2Zvb3RlcjA6D0Bjb3B5cmlnaHQwSSIKcGFnZTIGOwBGSSIvL2pvYnNo
b3BfcXVvdGV4L3F1b3Rlcy9uZXc/cXVvdGVfdGFza19pZD0xBjsAVEkiCnBh
Z2UzBjsARkkiLy9qb2JzaG9wX3F1b3RleC9xdW90ZXMvbmV3P3F1b3RlX3Rh
c2tfaWQ9MQY7AFQ=
','2013-10-08 03:22:44.787451','2013-10-08 03:25:51.574832');
DROP TABLE IF EXISTS "authentify_sys_logs";
CREATE TABLE "authentify_sys_logs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "log_date" datetime, "user_id" integer, "user_name" varchar(255), "user_ip" varchar(255), "action_logged" varchar(255));
INSERT INTO "authentify_sys_logs" VALUES(1,'2013-09-04 04:12:35.420202',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(2,'2013-09-04 05:17:48.705640',2,'梅昆','67.175.157.187','登录');
INSERT INTO "authentify_sys_logs" VALUES(3,'2013-09-06 21:35:26.307881',2,'梅昆','76.195.225.94','登录');
INSERT INTO "authentify_sys_logs" VALUES(4,'2013-09-07 06:16:40.770796',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(5,'2013-09-07 06:16:47.824634',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(6,'2013-09-07 06:16:48.071171',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(7,'2013-09-07 06:27:27.847968',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(8,'2013-09-07 07:22:03.321097',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(9,'2013-09-07 07:22:12.436604',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(10,'2013-09-07 07:22:20.603665',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(11,'2013-09-07 07:22:49.202348',3,'系统管理员','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(12,'2013-09-07 07:23:38.364030',3,'系统管理员','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(13,'2013-09-07 07:23:44.388394',NULL,'zyl@huayannb.com','125.114.24.82','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(14,'2013-09-07 07:23:52.301180',3,'系统管理员','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(15,'2013-09-07 07:24:28.640145',3,'系统管理员','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(16,'2013-09-07 07:24:28.893291',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(17,'2013-09-07 07:24:34.408261',20,'张云丽','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(18,'2013-09-07 07:24:46.198115',20,'张云丽','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(19,'2013-09-07 07:24:50.044540',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(20,'2013-09-07 07:25:18.186724',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(21,'2013-09-07 07:25:22.321053',20,'张云丽','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(22,'2013-09-07 07:29:27.732633',20,'张云丽','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(23,'2013-09-07 07:29:28.007100',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(24,'2013-09-07 07:29:32.175878',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(25,'2013-09-07 07:30:10.383353',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(26,'2013-09-07 07:30:13.833476',20,'张云丽','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(27,'2013-09-07 07:33:50.041211',20,'张云丽','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(28,'2013-09-07 07:33:50.368061',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(29,'2013-09-07 07:37:03.886995',20,'张云丽','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(30,'2013-09-07 07:42:17.601598',20,'张云丽','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(31,'2013-09-07 07:42:17.925591',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(32,'2013-09-07 07:42:23.327008',2,'梅昆','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(33,'2013-09-07 07:43:29.766423',2,'梅昆','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(34,'2013-09-07 07:43:30.327580',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(35,'2013-09-07 07:43:35.481814',20,'张云丽','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(36,'2013-09-07 07:45:20.249683',3,'系统管理员','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(37,'2013-09-07 07:45:47.974068',3,'系统管理员','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(38,'2013-09-07 07:45:53.008221',3,'系统管理员','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(39,'2013-09-07 07:46:08.336645',3,'系统管理员','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(40,'2013-09-07 07:46:19.335505',26,'朱妍','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(41,'2013-09-07 07:46:39.347629',26,'朱妍','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(42,'2013-09-07 07:46:50.167237',26,'朱妍','125.114.24.82','登录');
INSERT INTO "authentify_sys_logs" VALUES(43,'2013-09-07 07:46:54.866321',26,'朱妍','125.114.24.82','退出');
INSERT INTO "authentify_sys_logs" VALUES(44,'2013-09-07 12:35:52.673763',20,'张云丽','67.175.157.187','登录');
INSERT INTO "authentify_sys_logs" VALUES(45,'2013-09-07 13:14:51.917215',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(46,'2013-09-07 13:37:11.028156',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(47,'2013-09-07 13:37:20.327586',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(48,'2013-09-07 13:47:29.307321',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(49,'2013-09-07 13:49:54.508441',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(50,'2013-09-07 19:51:22.874477',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(51,'2013-09-07 19:53:17.958588',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(52,'2013-09-07 19:59:56.499733',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(53,'2013-09-07 20:02:39.219062',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(54,'2013-09-07 21:00:51.979735',NULL,'zyl@huayannb.com','127.0.0.1','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(55,'2013-09-07 21:01:05.907991',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(56,'2013-09-07 22:46:32.424445',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(57,'2013-09-07 22:46:40.218985',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(58,'2013-09-07 23:12:48.835329',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(59,'2013-09-08 00:27:00.847711',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(60,'2013-09-08 00:27:11.067810',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(61,'2013-09-08 00:36:09.237860',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(62,'2013-09-08 03:55:01.326075',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(63,'2013-09-08 03:55:15.517086',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(64,'2013-09-08 14:20:34.767775',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(65,'2013-09-08 14:20:43.072828',5,'张喻','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(66,'2013-09-08 15:01:58.428187',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(67,'2013-09-08 17:59:40.751327',NULL,NULL,NULL,'退出');
INSERT INTO "authentify_sys_logs" VALUES(68,'2013-09-08 18:00:04.825629',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(69,'2013-09-08 20:20:42.011231',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(70,'2013-09-08 20:21:46.938462',5,'张喻','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(71,'2013-09-08 20:33:15.640317',5,'张喻','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(72,'2013-09-08 20:33:22.665743',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(73,'2013-09-08 20:37:12.737172',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(74,'2013-09-08 21:00:15.006198',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(75,'2013-09-08 21:00:26.400290',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(76,'2013-09-08 21:04:14.612431',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(77,'2013-09-08 21:06:38.558366',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(78,'2013-09-08 21:13:11.690052',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(79,'2013-09-08 21:15:15.629935',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(80,'2013-09-08 21:18:32.913440',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(81,'2013-09-08 21:25:22.161044',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(82,'2013-09-08 22:12:08.793632',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(83,'2013-09-08 22:12:19.370149',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(84,'2013-09-08 22:42:39.217411',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(85,'2013-09-08 22:42:48.721058',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(86,'2013-09-09 00:36:09.231790',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(87,'2013-09-09 00:36:18.501136',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(88,'2013-09-09 00:45:57.953250',2,'梅昆','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(89,'2013-09-09 00:46:07.713946',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(90,'2013-09-09 01:56:34.749361',2,'梅昆','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(91,'2013-09-09 01:56:44.499963',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(92,'2013-09-09 02:40:23.721027',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(93,'2013-09-09 15:13:49.909558',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(94,'2013-09-09 15:42:12.225912',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(95,'2013-09-09 15:42:26.064239',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(96,'2013-09-09 15:54:19.050463',2,'梅昆','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(97,'2013-09-09 15:54:28.666886',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(98,'2013-09-09 16:06:08.998578',2,'梅昆','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(99,'2013-09-09 16:06:16.649002',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(100,'2013-09-09 17:57:58.868122',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(101,'2013-09-09 17:58:06.494647',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(102,'2013-09-09 18:13:29.005856',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(103,'2013-09-09 18:13:54.675240',2,'梅昆','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(104,'2013-09-09 18:14:02.105614',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(105,'2013-09-09 19:34:37.972907',20,'张云丽','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(106,'2013-09-09 19:34:50.097468',5,'张喻','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(107,'2013-09-09 19:35:26.237419',5,'张喻','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(108,'2013-09-09 19:35:32.807086',20,'张云丽','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(109,'2013-09-12 16:49:14.156472',NULL,'wf@huayannb.com','127.0.0.1','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(110,'2013-09-12 16:49:23.110767',NULL,'wf@huayannb.com','127.0.0.1','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(111,'2013-09-12 16:49:31.590366',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(112,'2013-09-12 17:01:00.427101',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(113,'2013-09-12 17:14:31.344593',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(114,'2013-09-12 17:18:01.955654',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(115,'2013-09-12 18:21:03.507893',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(116,'2013-09-12 18:32:00.292519',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(117,'2013-09-12 18:48:24.009831',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(118,'2013-09-12 19:23:35.170938',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(119,'2013-09-12 19:37:56.130518',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(120,'2013-09-12 20:19:57.980888',NULL,'wf@huayannb.com','127.0.0.1','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(121,'2013-09-12 20:20:07.473930',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(122,'2013-09-16 20:10:38.003612',1,'develop admin','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(123,'2013-09-16 20:11:47.686125',1,'develop admin','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(124,'2013-09-16 20:16:44.760033',30,'test_mail','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(125,'2013-09-16 20:16:52.035271',30,'test_mail','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(126,'2013-09-16 20:17:07.501443',NULL,'acgtek@yahoo.com','127.0.0.1','登录名/密码错误');
INSERT INTO "authentify_sys_logs" VALUES(127,'2013-09-16 20:17:16.166631',30,'test_mail','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(128,'2013-09-16 20:29:10.726010',30,'test_mail','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(129,'2013-09-16 20:45:01.750178',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(130,'2013-09-16 21:54:55.029831',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(131,'2013-09-17 15:36:50.575223',1,'develop admin','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(132,'2013-09-17 15:59:09.457564',1,'develop admin','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(133,'2013-09-17 15:59:32.556799',1,'develop admin','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(134,'2013-09-17 16:03:19.463138',1,'develop admin','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(135,'2013-09-17 16:05:25.686188',1,'develop admin','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(136,'2013-09-17 16:05:34.173162',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(137,'2013-09-17 17:45:12.017269',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(138,'2013-09-17 17:52:39.190639',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(139,'2013-09-17 22:30:40.967616',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(140,'2013-09-18 03:43:31.011764',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(141,'2013-09-18 03:43:40.441778',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(142,'2013-09-18 15:14:42.261262',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(143,'2013-09-18 16:28:05.400144',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(144,'2013-09-18 18:12:50.888503',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(145,'2013-09-18 18:12:59.758715',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(146,'2013-09-18 18:16:36.887061',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(147,'2013-09-18 18:25:25.889229',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(148,'2013-09-18 18:46:31.952484',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(149,'2013-09-18 18:48:42.920856',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(150,'2013-09-18 18:51:04.405470',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(151,'2013-09-18 18:55:27.819411',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(152,'2013-09-18 19:03:02.509029',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(153,'2013-09-18 19:04:43.315253',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(154,'2013-09-18 19:07:16.715344',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(155,'2013-09-18 19:08:55.700288',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(156,'2013-09-18 20:20:19.770691',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(157,'2013-09-18 20:25:23.353072',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(158,'2013-09-18 20:29:23.438148',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(159,'2013-09-18 20:31:46.214125',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(160,'2013-09-18 21:07:47.456016',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(161,'2013-09-18 22:11:55.343296',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(162,'2013-09-19 00:06:58.293158',NULL,NULL,NULL,'过期退出');
INSERT INTO "authentify_sys_logs" VALUES(163,'2013-09-19 00:07:07.159807',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(164,'2013-09-19 00:19:02.838283',4,'万锋','127.0.0.1','退出');
INSERT INTO "authentify_sys_logs" VALUES(165,'2013-09-19 00:19:16.276538',4,'万锋','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(166,'2013-10-08 01:15:14.191473',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(167,'2013-10-08 01:16:46.007831',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(168,'2013-10-08 01:26:41.719984',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(169,'2013-10-08 01:28:52.565148',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(170,'2013-10-08 01:35:48.554884',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(171,'2013-10-08 01:36:56.655679',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(172,'2013-10-08 01:41:02.649096',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(173,'2013-10-08 01:51:05.580536',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(174,'2013-10-08 01:58:54.610448',2,'梅昆','127.0.0.1','登录');
INSERT INTO "authentify_sys_logs" VALUES(175,'2013-10-08 03:22:44.714404',2,'梅昆','127.0.0.1','登录');
DROP TABLE IF EXISTS "authentify_sys_module_mappings";
CREATE TABLE "authentify_sys_module_mappings" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "sys_module_id" integer, "sys_user_group_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
DROP TABLE IF EXISTS "authentify_sys_modules";
CREATE TABLE "authentify_sys_modules" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "module_name" varchar(255), "module_group_name" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
DROP TABLE IF EXISTS "authentify_sys_user_groups";
CREATE TABLE "authentify_sys_user_groups" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_group_name" varchar(255), "short_note" varchar(255), "zone_id" integer, "group_type_id" integer, "manager_group_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authentify_sys_user_groups" VALUES(1,'华研管理',NULL,1,1,NULL,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(2,'华研市场',NULL,1,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(3,'华研评估',NULL,1,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(4,'华研办公室',NULL,1,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(5,'华研财会',NULL,1,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(6,'聚源市场',NULL,6,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(7,'华研镇海市场',NULL,2,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(8,'华研慈溪市场',NULL,3,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(9,'华研奉化市场',NULL,4,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(10,'华研江北市场',NULL,5,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(11,'宁海华跃市场',NULL,7,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(12,'聚源评估',NULL,6,1,1,'','');
INSERT INTO "authentify_sys_user_groups" VALUES(13,'admin','系统管理员',1,1,'','','');
DROP TABLE IF EXISTS "authentify_user_accesses";
CREATE TABLE "authentify_user_accesses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "action" varchar(255), "resource" varchar(255), "brief_note" varchar(255), "last_updated_by_id" integer, "role_definition_id" integer, "sql_code" text, "masked_attrs" text, "rank" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authentify_user_accesses" VALUES(1,'index_sys_log','user_menus',NULL,NULL,1,NULL,NULL,NULL,'','');
INSERT INTO "authentify_user_accesses" VALUES(2,'index','authentify_users',NULL,NULL,6,'Authentify::User.order(''status, id'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(3,'create','authentify_users',NULL,NULL,6,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(4,'update','authentify_users',NULL,NULL,6,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(5,'show','authentify_users',NULL,NULL,6,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(6,'index','authentify_sys_logs',NULL,NULL,1,'Authentify::SysLog.limit(2000).order(''id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(7,'index','authentify_sys_logs',NULL,NULL,6,'Authentify::SysLog.limit(2000).order(''id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(8,'index','customerx_customers',NULL,NULL,1,'Customerx::Customer.order(''active, id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(9,'index','customerx_customers',NULL,NULL,2,'Customerx::Customer.where(''customerx_customers.sales_id = :id '', id:  session[:user_id]).order(''customerx_customers.active, customerx_customers.id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(10,'index','customerx_customers',NULL,NULL,3,'Customerx::Customer.joins(''JOIN projectx_projects ON projectx_projects.customer_id = customerx_customers.id'').where(''projectx_projects.project_manager_id = ?'',  session[:user_id]).order(''customerx_customers.active, customerx_customers.id DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(11,'index','customerx_customers',NULL,NULL,4,'Customerx::Customer.order(''active, id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(12,'index','customerx_customers',NULL,NULL,5,'Customerx::Customer.order(''active, id DESC'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(13,'create','customerx_customers',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(14,'create','customerx_customers',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(15,'update','customerx_customers',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(16,'update','customerx_customers',NULL,NULL,2,'record.sales_id == session[:user_id] or  Projectx::Project.where(:customer_id => record.id).select(''sales_id'').include?(record.sales_id)
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(17,'show','customerx_customers',NULL,NULL,1,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(18,'show','customerx_customers',NULL,NULL,2,'(Projectx::Project.where(:sales_id => record.sales_id).select(''sales_id'').include?(session[:user_id]))
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(19,'show','customerx_customers',NULL,NULL,3,'Projectx::Project.where(:project_manager_id => session[:user_id]).select(''customer_id'').include?(record.id)
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(20,'show','customerx_customers',NULL,NULL,4,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(21,'show','customerx_customers',NULL,NULL,5,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(22,'index','customerx_customer_comm_records',NULL,NULL,1,'Customerx::CustomerCommRecord.where(''created_at > ?'', 2.years.ago).order(''customer_id'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(23,'index','customerx_customer_comm_records',NULL,NULL,2,'Customerx::CustomerCommRecord.joins(:customer).where(''customerx_customer_comm_records.created_at > ?'', 2.years.ago).where(:customerx_customers => {:sales_id => session[:user_id]}).order(''customerx_customer_comm_records.customer_id'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(24,'create','customerx_customer_comm_records',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(25,'create','customerx_customer_comm_records',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(27,'update','customerx_customer_comm_records',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(28,'update','customerx_customer_comm_records',NULL,NULL,2,'(record.customer.sales_id == session[:user_id]) or (Projectx::Project.where(:customer_id => record.customer.id).select(''sales_id'').include?(session[:user_id]))
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(30,'show','customerx_customer_comm_records',NULL,NULL,1,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(31,'show','customerx_customer_comm_records',NULL,NULL,2,'(record.customer.sales_id == session[:user_id]) or (Projectx::Project.where(:customer_id => record.customer.id).select(''sales_id'').include?(session[:user_id]))

',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(32,'show','customerx_customer_comm_records',NULL,NULL,3,' Projectx::Project.where(:customer_id => record.customer.id).select(''project_manager_id'').include?(session[:user_id])
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(60,'index','jobshop_quotex_quotes',NULL,NULL,1,'JobshopQuotex::Quote.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')

',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(61,'index','projectx_projects',NULL,NULL,2,'Projectx::Project.joins(:customer).where(''projectx_projects.sales_id = :id or  customerx_customers.sales_id = :id'', id:  session[:user_id]).where(''projectx_projects.created_at > ?'', 2.years.ago).order(''projectx_projects.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(62,'index','projectx_projects',NULL,NULL,3,'Projectx::Project.where(:project_manager_id => session[:user_id]).where(''projectx_projects.created_at > ?'', 2.years.ago).order(''projectx_projects.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(63,'index','projectx_projects',NULL,NULL,5,'Projectx::Project.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(64,'create','jobshop_quotex_quotes',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(65,'create','projectx_projects',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(66,'update','jobshop_quotex_quotes',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(67,'update','projectx_projects',NULL,NULL,2,'record.sales_id == session[:user_id] or record.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(68,'update','projectx_projects',NULL,NULL,3,'record.project_manager_id == session[:user_id]
','=contract_amount, =other_charge, =contract_on_file, =signed, =payment_term, =payment_agreement, =paid_out',NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(69,'show','jobshop_quotex_quotes',NULL,NULL,1,NULL,NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(70,'show','projectx_projects',NULL,NULL,2,'record.sales_id == session[:user_id] or record.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(71,'show','projectx_projects',NULL,NULL,3,'record.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(72,'show','projectx_projects',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(73,'index_task','projectx_projects',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(74,'index_task','projectx_projects',NULL,NULL,2,'record.sales_id == session[:user_id] or record.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(75,'index_task','projectx_projects',NULL,NULL,3,'record.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(76,'index_task','projectx_projects',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(77,'index','projectx_contracts',NULL,NULL,1,'Projectx::Contract.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(78,'index','projectx_contracts',NULL,NULL,2,'Projectx::Contract.joins(:project => :customer).where(''projectx_projects.sales_id = :id or customerx_customers.sales_id = :id'', id:  session[:user_id]).where(''projectx_contracts.created_at > ?'', 2.years.ago).order(''projectx_contracts.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(79,'index','projectx_contracts',NULL,NULL,3,'Projectx::Contract.joins(:project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).where(''projectx_contracts.created_at > ?'', 2.years.ago).order(''projectx_contracts.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(80,'index','projectx_contracts',NULL,NULL,5,'Projectx::Contract.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(81,'create','projectx_contracts',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(82,'create','projectx_contracts',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(83,'update','projectx_contracts',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(84,'update','projectx_contracts',NULL,NULL,2,'record.project.sales_id == session[:user_id] or  record.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(85,'show','projectx_contracts',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(86,'show','projectx_contracts',NULL,NULL,2,'record.project.sales_id == session[:user_id] or record.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(87,'show','projectx_contracts',NULL,NULL,3,'record.project.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(88,'show','projectx_contracts',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(89,'index','projectx_payments',NULL,NULL,1,'Projectx::Payment.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(90,'index','projectx_payments',NULL,NULL,2,'Projectx::Payment.joins(:contract => {:project => :customer}).where(''projectx_projects.sales_id = :id or customerx_customers.sales_id = :id'', id:  session[:user_id]).where(''projectx_payments.created_at > ?'', 2.years.ago).order(''projectx_payments.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(91,'index','projectx_payments',NULL,NULL,3,'Projectx::Payment.joins(:contract => :project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).where(''projectx_payments.created_at > ?'', 2.years.ago).order(''projectx_payments.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(92,'index','projectx_payments',NULL,NULL,5,'Projectx::Payment.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(93,'create','projectx_payments',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(94,'create','projectx_payments',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(95,'update','projectx_payments',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(96,'update','projectx_payments',NULL,NULL,2,'record.contract.project.sales_id == session[:user_id] or  record.contract.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(97,'show','projectx_payments',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(98,'show','projectx_payments',NULL,NULL,2,'record.contract.project.sales_id == session[:user_id] or record.contract.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(99,'show','projectx_payments',NULL,NULL,3,'record.contract.project.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(100,'show','projectx_payments',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(101,'index','projectx_tasks',NULL,NULL,1,'Projectx::Task.where(''created_at > ?'', 2.years.ago).order(''project_id DESC, created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(102,'index','projectx_tasks',NULL,NULL,2,'Projectx::Task.joins(:project => :customer).where(''projectx_projects.sales_id = :id  or customerx_customers.sales_id = :id'', id:  session[:user_id]).where(''projectx_tasks.created_at > ?'', 2.years.ago).order(''projectx_tasks.project_id DESC, projectx_tasks.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(103,'index','projectx_tasks',NULL,NULL,3,'Projectx::Task.joins(:project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).where(''projectx_tasks.created_at > ?'', 2.years.ago).order(''projectx_tasks.project_id DESC, projectx_tasks.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(104,'index','projectx_tasks',NULL,NULL,5,'Projectx::Task.where(''projectx_tasks.created_at > ?'', 2.years.ago).order(''projectx_tasks.project_id DESC, projectx_tasks.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(105,'create','projectx_tasks',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(106,'create','projectx_tasks',NULL,NULL,2,'record.sales_id == session[:user_id] or record.customer.sales_id == session[:user_id]',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(107,'update','projectx_tasks',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(108,'update','projectx_tasks',NULL,NULL,2,'record.project.sales_id == session[:user_id] or record.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(109,'show','projectx_tasks',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(110,'show','projectx_tasks',NULL,NULL,2,'record.project.sales_id == session[:user_id] or  record.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(111,'show','projectx_tasks',NULL,NULL,3,'record.project.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(112,'show','projectx_tasks',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(113,'index','projectx_task_requests',NULL,NULL,1,'Projectx::TaskRequest.where(''created_at > ?'', 2.years.ago).order(''task_id DESC, created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(114,'index','projectx_task_requests',NULL,NULL,2,'Projectx::TaskRequest.joins(:task => {:project => :customer}).where(''projectx_projects.sales_id = :id OR customerx_customers.sales_id = :id'', id:  session[:user_id]).where(''projectx_task_requests.created_at > ?'', 2.years.ago).order(''projectx_task_requests.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(115,'index','projectx_task_requests',NULL,NULL,3,'Projectx::TaskRequest.joins(:task => :project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).where(''projectx_task_requests.created_at > ?'', 2.years.ago).order(''projectx_task_requests.created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(116,'index','projectx_task_requests',NULL,NULL,5,'Projectx::TaskRequest.where(''created_at > ?'', 2.years.ago).order(''task_id DESC, created_at DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(117,'create','projectx_task_requests',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(118,'create','projectx_task_requests',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(119,'update','projectx_task_requests',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(120,'update','projectx_task_requests',NULL,NULL,2,'record.task.project.sales_id == session[:user_id] or record.task.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(121,'show','projectx_task_requests',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(122,'show','projectx_task_requests',NULL,NULL,2,'record.task.project.sales_id == session[:user_id] or  record.task.project.customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(123,'show','projectx_task_requests',NULL,NULL,3,'record.task.project.project_manager_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(124,'index','projectx_task_templates',NULL,NULL,1,'Projectx::TaskTemplate.order(''project_task_template_id, execution_order, execution_sub_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(125,'index','projectx_task_templates',NULL,NULL,2,'Projectx::TaskTemplate.joins(:project_task_template).where(''projectx_project_task_templates.active = ?'', true).order(''projectx_task_templates.project_task_template_id, projectx_task_templates.execution_order, projectx_task_templates.execution_sub_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(126,'index','projectx_task_templates',NULL,NULL,3,'Projectx::TaskTemplate.joins(:project_task_template).where(''projectx_project_task_templates.active = ?'', true).order(''projectx_task_templates.project_task_template_id, projectx_task_templates.execution_order, projectx_task_templates.execution_sub_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(127,'index','projectx_task_templates',NULL,NULL,4,'Projectx::TaskTemplate.joins(:project_task_template).where(''projectx_project_task_templates.active = ?'', true).order(''projectx_task_templates.project_task_template_id, projectx_task_templates.execution_order, projectx_task_templates.execution_sub_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(128,'index','projectx_task_templates',NULL,NULL,5,'Projectx::TaskTemplate.joins(:project_task_template).where(''projectx_project_task_templates.active = ?'', true).order(''projectx_task_templates.project_task_template_id, projectx_task_templates.execution_order, projectx_task_templates.execution_sub_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(129,'create','projectx_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(130,'update','projectx_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(131,'show','projectx_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(132,'show','projectx_task_templates',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(133,'show','projectx_task_templates',NULL,NULL,3,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(134,'show','projectx_task_templates',NULL,NULL,4,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(135,'show','projectx_task_templates',NULL,NULL,5,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(136,'search','projectx_projects',NULL,NULL,1,NULL,NULL,NULL,'2013-09-18 10:16:26 -0500','2013-09-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(137,'search','projectx_projects',NULL,NULL,2,NULL,NULL,NULL,'2013-09-18 10:16:26 -0500','2013-09-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(138,'stats','projectx_projects',NULL,NULL,1,NULL,NULL,NULL,'2013-09-18 10:16:26 -0500','2013-09-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(139,'stats','projectx_projects',NULL,NULL,2,NULL,NULL,NULL,'2013-09-18 10:16:26 -0500','2013-09-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(153,'index','projectx_type_definitions',NULL,NULL,1,'Projectx::TypeDefinition.order(''ranking_order'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(154,'index','projectx_type_definitions',NULL,NULL,2,'Projectx::TypeDefinition.where(:active => true).order(''ranking_order'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(155,'index','projectx_type_definitions',NULL,NULL,3,'Projectx::TypeDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(156,'index','projectx_type_definitions',NULL,NULL,4,'Projectx::TypeDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(157,'index','projectx_type_definitions',NULL,NULL,5,'Projectx::TypeDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(158,'create','projectx_type_definitions',NULL,NULL,1,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(159,'update','projectx_type_definitions',NULL,NULL,1,'
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(160,'index','projectx_task_definitions',NULL,NULL,1,'Projectx::TaskDefinition.order(''ranking_order'')

',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(161,'index','projectx_task_definitions',NULL,NULL,2,'Projectx::TaskDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(162,'index','projectx_task_definitions',NULL,NULL,3,'Projectx::TaskDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(163,'index','projectx_task_definitions',NULL,NULL,4,'Projectx::TaskDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(164,'index','projectx_task_definitions',NULL,NULL,5,'Projectx::TaskDefinition.where(:active => true).order(''ranking_order'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(165,'create','projectx_task_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(166,'update','projectx_task_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(167,'index_admin','user_menus',NULL,NULL,6,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(168,'index_user','user_menus',NULL,NULL,1,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(169,'index_user','user_menus',NULL,NULL,2,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(170,'index_user','user_menus',NULL,NULL,3,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(171,'index_user','user_menus',NULL,NULL,4,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(172,'index_user','user_menus',NULL,NULL,5,NULL,NULL,NULL,'2013-05-02 10:16:26 -0500','2013-05-02 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(194,'index_payment','projectx_projects',NULL,NULL,1,'
',NULL,NULL,'2013-05-12 10:16:26 -0500','2013-05-12 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(195,'index_payment','projectx_projects',NULL,NULL,2,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(196,'index_payment','projectx_projects',NULL,NULL,3,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(197,'index_payment','projectx_projects',NULL,NULL,5,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(198,'show_contract','projectx_projects',NULL,NULL,1,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(199,'show_contract','projectx_projects',NULL,NULL,2,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(200,'show_contract','projectx_projects',NULL,NULL,3,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(201,'show_contract','projectx_projects',NULL,NULL,5,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(202,'index_payment','projectx_contracts',NULL,NULL,1,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(203,'index_payment','projectx_contracts',NULL,NULL,2,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(204,'index_payment','projectx_contracts',NULL,NULL,3,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(205,'index_payment','projectx_contracts',NULL,NULL,5,NULL,NULL,NULL,'2013-05-12 10:16:26 -050','2013-05-12 10:16:26 -050');
INSERT INTO "authentify_user_accesses" VALUES(206,'manage','projectx_projects',NULL,NULL,3,NULL,NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(207,'sales','projectx_projects',NULL,NULL,1,NULL,NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(208,'sales','projectx_projects',NULL,NULL,2,NULL,NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(209,'index','projectx_project_task_templates',NULL,NULL,1,'Projectx::ProjectTaskTemplate.order(''active,ranking_order'')',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(210,'index','projectx_project_task_templates',NULL,NULL,2,'Projectx::ProjectTaskTemplate.where(:active => true).order(''ranking_order'')',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(211,'index','projectx_project_task_templates',NULL,NULL,3,'Projectx::ProjectTaskTemplate.where(:active => true).order(''ranking_order'')',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(212,'index','projectx_project_task_templates',NULL,NULL,4,'Projectx::ProjectTaskTemplate.where(:active => true).order(''ranking_order'')',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(213,'index','projectx_project_task_templates',NULL,NULL,5,'Projectx::ProjectTaskTemplate.where(:active => true).order(''ranking_order'')',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(214,'create','projectx_project_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(215,'update','projectx_project_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(216,'show','projectx_project_task_templates',NULL,NULL,1,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(217,'show','projectx_project_task_templates',NULL,NULL,2,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(218,'show','projectx_project_task_templates',NULL,NULL,3,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(219,'show','projectx_project_task_templates',NULL,NULL,4,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(220,'show','projectx_project_task_templates',NULL,NULL,5,'',NULL,NULL,'2013-05-18 10:16:26 -0500','2013-05-18 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(221,'autocomplete','customerx_customers',NULL,NULL,1,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(222,'autocomplete','customerx_customers',NULL,NULL,2,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(223,'autocomplete','customerx_customers',NULL,NULL,3,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(224,'autocomplete','customerx_customers',NULL,NULL,4,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(225,'autocomplete','customerx_customers',NULL,NULL,5,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(226,'autocomplete','authentify_users',NULL,NULL,1,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(227,'autocomplete','authentify_users',NULL,NULL,2,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(228,'autocomplete','authentify_users',NULL,NULL,3,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(229,'autocomplete','authentify_users',NULL,NULL,4,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(230,'autocomplete','authentify_users',NULL,NULL,5,NULL,NULL,NULL,'2013-05-19 10:16:26','2013-05-19 10:16:26');
INSERT INTO "authentify_user_accesses" VALUES(232,'show_new_payment','projectx_contracts',NULL,NULL,5,NULL,NULL,NULL,'2013-07-10 10:16:26 -0500','2013-07-10 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(233,'index_new_payment','projectx_payments',NULL,NULL,5,NULL,NULL,NULL,'2013-07-10 10:16:26 -0500','2013-07-10 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(234,'create','projectx_payments',NULL,NULL,5,NULL,NULL,NULL,'2013-07-10 10:16:26 -0500','2013-07-10 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(235,'index_customer_comm_record','commonx_logs',NULL,NULL,1,'Commonx::Log.limit(500).where(''resource_name = ? '', ''customerx_customer_comm_records'').order(''id DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(236,'index_customer_comm_record','commonx_logs',NULL,NULL,2,'Commonx::Log.where(''commonx_logs.resource_name = ?'', ''customerx_customer_comm_records'').where(:resource_id => Customerx::CustomerCommRecord.joins(:customer).where(''customerx_customers.sales_id = ?'', session[:user_id]).select(''id'')).limit(500).order(''commonx_logs.id DESC'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(237,'create_customer_comm_record','commonx_logs',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(238,'create_customer_comm_record','commonx_logs',NULL,NULL,2,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(239,'update_customer_comm_record','commonx_logs',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(240,'update_customer_comm_record','commonx_logs',NULL,NULL,2,'Customerx::CustomerCommRecord.find_by_id(record.id).customer.sales_id == session[:user_id]
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(241,'index_customer_status','commonx_misc_definitions',NULL,NULL,1,'Commonx::MiscDefinition.order(''active, ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(242,'index_customer_status','commonx_misc_definitions',NULL,NULL,2,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(243,'index_customer_status','commonx_misc_definitions',NULL,NULL,3,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(244,'index_customer_status','commonx_misc_definitions',NULL,NULL,4,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(245,'index_customer_status','commonx_misc_definitions',NULL,NULL,5,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(246,'create_customer_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(247,'update_customer_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(248,'index_customer_comm_category','commonx_misc_definitions',NULL,NULL,1,'Commonx::MiscDefinition.order(''active, ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(249,'index_customer_comm_category','commonx_misc_definitions',NULL,NULL,2,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(250,'index_customer_comm_category','commonx_misc_definitions',NULL,NULL,3,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(251,'index_customer_comm_category','commonx_misc_definitions',NULL,NULL,4,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(252,'index_customer_comm_category','commonx_misc_definitions',NULL,NULL,5,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(253,'create_customer_comm_category','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(254,'update_customer_comm_category','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(255,'index_quality_system','commonx_misc_definitions',NULL,NULL,1,'Commonx::MiscDefinition.order(''active, ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(256,'index_quality_system','commonx_misc_definitions',NULL,NULL,2,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(257,'index_quality_system','commonx_misc_definitions',NULL,NULL,3,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(258,'index_quality_system','commonx_misc_definitions',NULL,NULL,4,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(259,'index_quality_system','commonx_misc_definitions',NULL,NULL,5,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(260,'create_quality_system','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(261,'update_quality_system','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(262,'index_project_status','commonx_misc_definitions',NULL,NULL,1,'Commonx::MiscDefinition.order(''active, ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(263,'index_project_status','commonx_misc_definitions',NULL,NULL,2,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(264,'index_project_status','commonx_misc_definitions',NULL,NULL,3,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(265,'index_project_status','commonx_misc_definitions',NULL,NULL,4,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(266,'index_project_status','commonx_misc_definitions',NULL,NULL,5,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(267,'create_project_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(268,'update_project_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(269,'index_task_status','commonx_misc_definitions',NULL,NULL,1,'Commonx::MiscDefinition.order(''active, ranking_index'')',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(270,'index_task_status','commonx_misc_definitions',NULL,NULL,2,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(271,'index_task_status','commonx_misc_definitions',NULL,NULL,3,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(272,'index_task_status','commonx_misc_definitions',NULL,NULL,4,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(273,'index_task_status','commonx_misc_definitions',NULL,NULL,5,'Commonx::MiscDefinition.where(:active => true).order(''ranking_index'')
',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(274,'create_task_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(276,'update_task_status','commonx_misc_definitions',NULL,NULL,1,'',NULL,NULL,'2013-05-01 10:16:26 -0500','2013-05-01 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(277,'index_project','commonx_logs',NULL,NULL,1,'Commonx::Log.where(''resource_name = ?'', ''projectx_project'').where(''created_at > ?'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,1,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(278,'index_project','commonx_logs',NULL,NULL,2,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_projects'', 2.years.ago).where(:resource_id => Projectx::Project.joins(:customer).where(''projectx_projects.sales_id = ? OR customerx_customers.sales_id = ?'', session[:user_id], session[:user_id]).select(''projectx_projects.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,1,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(279,'index_project','commonx_logs',NULL,NULL,3,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_projects'', 2.years.ago).where(:resource_id => Projectx::Project.where(''projectx_projects.project_manager_id = ?'', session[:user_id]).select(''projectx_projects.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,1,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(280,'index_project','commonx_logs',NULL,NULL,5,'Commonx::Log.where(''resource_name = ? AND created_at > ? '', ''projectx_projects'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,1,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(281,'create_project','commonx_logs',NULL,NULL,1,NULL,NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(282,'create_project','commonx_logs',NULL,NULL,2,NULL,NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(283,'create_project','commonx_logs',NULL,NULL,3,NULL,NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(284,'index_task','commonx_logs',NULL,NULL,1,'Commonx::Log.where(''created_at > ? AND resource_name = ?'', 2.years.ago, ''projectx_tasks'').order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(285,'index_task','commonx_logs',NULL,NULL,2,'Commonx::Log.where(''created_at > ? AND resource_name = ?'', 2.years.ago, ''projectx_tasks'').where(:resource_id => Projectx::Task.joins(:project => :customer).where(''projectx_projects.sales_id = :id OR customerx_customers.sales_id = :id'', id:  session[:user_id]).select(''projectx_tasks.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(286,'index_task','commonx_logs',NULL,NULL,3,'Commonx::Log.where(''created_at > ? AND resource_name = ?'', 2.years.ago, ''projectx_tasks'').where(:resource_id => Projectx::Task.joins(:project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).select(''projectx_tasks.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(287,'index_task','commonx_logs',NULL,NULL,5,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_tasks'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(288,'create_task','commonx_logs',NULL,NULL,1,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(289,'create_task','commonx_logs',NULL,NULL,2,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(290,'create_task','commonx_logs',NULL,NULL,3,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(291,'index_task_request','commonx_logs',NULL,NULL,1,'Commonx::Log.where(''resource_name = ?'', ''projectx_task_requests'').where(''created_at > ?'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(292,'index_task_request','commonx_logs',NULL,NULL,2,'Commonx::Log.where(''created_at > ? AND resource_name = ?'', 2.years.ago, ''projectx_task_requests'').where(:resource_id => Projectx::TaskRequest.joins(:task => {:project => :customer}).where(''projectx_projects.sales_id = :id  or  customerx_customers.sales_id = :id'', id:  session[:user_id]).select(''projectx_task_requests.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(293,'index_task_request','commonx_logs',NULL,NULL,3,'Commonx::Log.where(''created_at > ? AND resource_name = ?'', 2.years.ago, ''projectx_task_requests'').where(:resource_id => Projectx::TaskRequest.joins(:task => :project).where(''projectx_projects.project_manager_id = ?'', session[:user_id]).select(''projectx_task_requests.id'')).order(''commonx_logs.resource_id DESC, commonx_logs.id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(294,'index_task_request','commonx_logs',NULL,NULL,5,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_task_requests'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(295,'create_task_request','commonx_logs',NULL,NULL,1,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(296,'create_task_request','commonx_logs',NULL,NULL,2,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(297,'create_task_request','commonx_logs',NULL,NULL,3,'',NULL,NULL,'2013-05-03 10:16:26 -0500','2013-05-03 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(298,'create','projectx_tasks',NULL,NULL,3,'record.project_manager_id == session[:user_id]
',NULL,NULL,'2013-09-07 10:16:26 -0500','2013-09-07 10:16:26 -0500');
INSERT INTO "authentify_user_accesses" VALUES(299,'update','projectx_tasks',NULL,NULL,3,'record.project.project_manager_id == session[:user_id]
','',NULL,'2013-09-07','2013-09-07');
INSERT INTO "authentify_user_accesses" VALUES(300,'index','projectx_projects',NULL,NULL,4,'Projectx::Project.where(''created_at > ?'', 2.years.ago).order(''created_at DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(301,'index','projectx_tasks',NULL,NULL,4,'Projectx::Task.where(''projectx_tasks.created_at > ?'', 2.years.ago).order(''projectx_tasks.project_id DESC, projectx_tasks.created_at DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(302,'show','projectx_tasks',NULL,NULL,4,'',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(303,'index','projectx_task_requests',NULL,NULL,4,'Projectx::TaskRequest.where(''created_at > ?'', 2.years.ago).order(''task_id DESC, created_at DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(304,'show','projectx_task_requests',NULL,NULL,4,'Projectx::TaskRequest.where(''created_at > ?'', 2.years.ago).order(''task_id DESC, created_at DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(305,'index_task','projectx_projects',NULL,NULL,4,NULL,NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(306,'show','projectx_projects',NULL,NULL,4,NULL,NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(307,'index_task','commonx_logs',NULL,NULL,4,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_tasks'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(308,'create_task','commonx_logs',NULL,NULL,4,NULL,NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(309,'create_task_request','commonx_logs',NULL,NULL,4,NULL,NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(310,'create_task_request','commonx_logs',NULL,NULL,4,NULL,NULL,NULL,'2013-09-08','2013-09-08');
INSERT INTO "authentify_user_accesses" VALUES(311,'index_task_request','commonx_logs',NULL,NULL,4,'Commonx::Log.where(''resource_name = ? AND created_at > ?'', ''projectx_task_requests'', 2.years.ago).order(''resource_id DESC, id DESC'')
',NULL,NULL,'2013-09-08','2013-09-08');
DROP TABLE IF EXISTS "authentify_user_levels";
CREATE TABLE "authentify_user_levels" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "user_id" integer, "sys_user_group_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
INSERT INTO "authentify_user_levels" VALUES(1,1,13,'2013-05-02 17:54:40.832098','2013-05-02 17:54:40.832098',NULL);
INSERT INTO "authentify_user_levels" VALUES(2,2,1,'2013-05-03 16:57:59.258631','2013-05-03 16:57:59.258631',NULL);
INSERT INTO "authentify_user_levels" VALUES(3,3,13,'2013-05-11 19:57:45.082913','2013-05-11 19:57:45.082913',NULL);
INSERT INTO "authentify_user_levels" VALUES(4,4,2,'2013-05-17 01:23:36.888325','2013-05-17 01:23:36.888325',NULL);
INSERT INTO "authentify_user_levels" VALUES(5,5,4,'2013-05-17 01:26:08.206659','2013-05-17 01:26:08.206659',NULL);
INSERT INTO "authentify_user_levels" VALUES(6,6,3,'2013-05-17 01:29:19.052595','2013-05-17 01:29:19.052595',NULL);
INSERT INTO "authentify_user_levels" VALUES(7,7,3,'2013-05-17 01:30:34.159967','2013-05-17 01:30:34.159967',NULL);
INSERT INTO "authentify_user_levels" VALUES(8,8,3,'2013-05-17 01:31:59.823339','2013-05-17 01:31:59.823339',NULL);
INSERT INTO "authentify_user_levels" VALUES(9,9,3,'2013-05-17 01:32:51.850598','2013-05-17 01:32:51.850598',NULL);
INSERT INTO "authentify_user_levels" VALUES(10,10,3,'2013-05-17 01:33:30.915840','2013-05-17 01:33:30.915840',NULL);
INSERT INTO "authentify_user_levels" VALUES(11,11,3,'2013-05-17 01:34:03.383453','2013-05-17 01:34:03.383453',NULL);
INSERT INTO "authentify_user_levels" VALUES(12,12,3,'2013-05-17 01:34:55.759998','2013-05-17 01:34:55.759998',NULL);
INSERT INTO "authentify_user_levels" VALUES(13,13,3,'2013-05-17 01:35:27.614512','2013-05-17 01:35:27.614512',NULL);
INSERT INTO "authentify_user_levels" VALUES(14,14,3,'2013-05-17 01:36:23.797966','2013-05-17 01:36:23.797966',NULL);
INSERT INTO "authentify_user_levels" VALUES(15,15,3,'2013-05-17 01:36:45.369790','2013-05-17 01:36:45.369790',NULL);
INSERT INTO "authentify_user_levels" VALUES(16,16,3,'2013-05-17 01:37:10.452646','2013-05-17 01:37:10.452646',NULL);
INSERT INTO "authentify_user_levels" VALUES(17,17,3,'2013-05-17 01:37:42.680651','2013-05-17 01:37:42.680651',NULL);
INSERT INTO "authentify_user_levels" VALUES(18,18,3,'2013-05-17 01:38:18.766219','2013-05-17 01:38:18.766219',NULL);
INSERT INTO "authentify_user_levels" VALUES(19,19,3,'2013-05-17 01:38:48.461704','2013-05-17 01:38:48.461704',NULL);
INSERT INTO "authentify_user_levels" VALUES(20,20,3,'2013-05-17 01:39:20.791373','2013-05-17 01:39:20.791373',NULL);
INSERT INTO "authentify_user_levels" VALUES(21,21,3,'2013-05-17 01:39:50.687934','2013-05-17 01:39:50.687934',NULL);
INSERT INTO "authentify_user_levels" VALUES(22,22,3,'2013-05-17 01:40:21.255358','2013-05-17 01:40:21.255358',NULL);
INSERT INTO "authentify_user_levels" VALUES(23,23,12,'2013-05-17 01:42:01.969172','2013-05-17 01:42:01.969172',NULL);
INSERT INTO "authentify_user_levels" VALUES(24,24,12,'2013-05-17 01:42:57.560153','2013-05-17 01:42:57.560153',NULL);
INSERT INTO "authentify_user_levels" VALUES(25,25,12,'2013-05-17 01:44:13.528737','2013-05-17 01:44:13.528737',NULL);
INSERT INTO "authentify_user_levels" VALUES(26,26,5,'2013-05-17 01:45:41.770096','2013-05-17 01:45:41.770096',NULL);
INSERT INTO "authentify_user_levels" VALUES(27,23,6,'2013-05-18 06:35:44.424467','2013-05-18 06:35:44.424467',NULL);
INSERT INTO "authentify_user_levels" VALUES(28,27,2,'2013-07-05 06:54:09.013957','2013-07-05 06:54:09.013957',NULL);
INSERT INTO "authentify_user_levels" VALUES(29,27,6,'2013-07-05 06:54:09.015514','2013-07-05 06:54:09.015514',NULL);
INSERT INTO "authentify_user_levels" VALUES(30,27,11,'2013-07-05 06:54:09.016353','2013-07-05 06:54:09.016353',NULL);
INSERT INTO "authentify_user_levels" VALUES(31,28,3,'2013-07-05 07:14:56.408261','2013-07-05 07:14:56.408261',NULL);
INSERT INTO "authentify_user_levels" VALUES(32,29,3,'2013-08-03 07:33:18.271628','2013-08-03 07:33:18.271628',NULL);
INSERT INTO "authentify_user_levels" VALUES(33,30,2,'2013-09-16 20:11:34.362879','2013-09-16 20:11:34.362879',NULL);
DROP TABLE IF EXISTS "authentify_user_roles";
CREATE TABLE "authentify_user_roles" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "last_updated_by_id" integer, "role_definition_id" integer, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
INSERT INTO "authentify_user_roles" VALUES(1,NULL,6,1,'2013-05-02 17:54:40.834099','2013-05-02 17:54:40.834099',NULL);
INSERT INTO "authentify_user_roles" VALUES(2,NULL,1,2,'2013-05-03 16:57:59.260632','2013-05-03 16:57:59.260632',NULL);
INSERT INTO "authentify_user_roles" VALUES(3,NULL,6,3,'2013-05-11 19:57:45.085167','2013-05-11 19:57:45.085167',NULL);
INSERT INTO "authentify_user_roles" VALUES(4,NULL,2,4,'2013-05-17 01:23:36.890609','2013-05-17 01:23:36.890609',NULL);
INSERT INTO "authentify_user_roles" VALUES(5,NULL,4,5,'2013-05-17 01:26:08.207676','2013-05-17 01:26:08.207676',NULL);
INSERT INTO "authentify_user_roles" VALUES(6,NULL,3,6,'2013-05-17 01:29:19.053661','2013-05-17 01:29:19.053661',NULL);
INSERT INTO "authentify_user_roles" VALUES(7,NULL,3,7,'2013-05-17 01:30:34.160951','2013-05-17 01:30:34.160951',NULL);
INSERT INTO "authentify_user_roles" VALUES(8,NULL,3,8,'2013-05-17 01:31:59.824329','2013-05-17 01:31:59.824329',NULL);
INSERT INTO "authentify_user_roles" VALUES(9,NULL,3,9,'2013-05-17 01:32:51.851629','2013-05-17 01:32:51.851629',NULL);
INSERT INTO "authentify_user_roles" VALUES(10,NULL,3,10,'2013-05-17 01:33:30.916867','2013-05-17 01:33:30.916867',NULL);
INSERT INTO "authentify_user_roles" VALUES(11,NULL,3,11,'2013-05-17 01:34:03.384553','2013-05-17 01:34:03.384553',NULL);
INSERT INTO "authentify_user_roles" VALUES(12,NULL,3,12,'2013-05-17 01:34:55.761001','2013-05-17 01:34:55.761001',NULL);
INSERT INTO "authentify_user_roles" VALUES(13,NULL,3,13,'2013-05-17 01:35:27.615543','2013-05-17 01:35:27.615543',NULL);
INSERT INTO "authentify_user_roles" VALUES(14,NULL,3,14,'2013-05-17 01:36:23.799099','2013-05-17 01:36:23.799099',NULL);
INSERT INTO "authentify_user_roles" VALUES(15,NULL,3,15,'2013-05-17 01:36:45.370813','2013-05-17 01:36:45.370813',NULL);
INSERT INTO "authentify_user_roles" VALUES(16,NULL,3,16,'2013-05-17 01:37:10.453690','2013-05-17 01:37:10.453690',NULL);
INSERT INTO "authentify_user_roles" VALUES(17,NULL,3,17,'2013-05-17 01:37:42.681648','2013-05-17 01:37:42.681648',NULL);
INSERT INTO "authentify_user_roles" VALUES(18,NULL,3,18,'2013-05-17 01:38:18.767248','2013-05-17 01:38:18.767248',NULL);
INSERT INTO "authentify_user_roles" VALUES(19,NULL,3,19,'2013-05-17 01:38:48.462691','2013-05-17 01:38:48.462691',NULL);
INSERT INTO "authentify_user_roles" VALUES(20,NULL,3,20,'2013-05-17 01:39:20.792359','2013-05-17 01:39:20.792359',NULL);
INSERT INTO "authentify_user_roles" VALUES(21,NULL,3,21,'2013-05-17 01:39:50.688955','2013-05-17 01:39:50.688955',NULL);
INSERT INTO "authentify_user_roles" VALUES(22,NULL,3,22,'2013-05-17 01:40:21.256349','2013-05-17 01:40:21.256349',NULL);
INSERT INTO "authentify_user_roles" VALUES(23,NULL,3,23,'2013-05-17 01:42:01.970184','2013-05-17 01:42:01.970184',NULL);
INSERT INTO "authentify_user_roles" VALUES(24,NULL,3,24,'2013-05-17 01:42:57.561131','2013-05-17 01:42:57.561131',NULL);
INSERT INTO "authentify_user_roles" VALUES(25,NULL,3,25,'2013-05-17 01:44:13.529715','2013-05-17 01:44:13.529715',NULL);
INSERT INTO "authentify_user_roles" VALUES(26,NULL,5,26,'2013-05-17 01:45:41.771113','2013-05-17 01:45:41.771113',NULL);
INSERT INTO "authentify_user_roles" VALUES(27,NULL,2,7,'2013-05-24 23:58:11.857464','2013-05-24 23:58:11.857464',NULL);
INSERT INTO "authentify_user_roles" VALUES(28,NULL,2,27,'2013-07-05 06:54:09.017841','2013-07-05 06:59:29.542619',NULL);
INSERT INTO "authentify_user_roles" VALUES(29,NULL,4,27,'2013-07-05 06:59:29.544057','2013-07-05 06:59:29.544057',NULL);
INSERT INTO "authentify_user_roles" VALUES(30,NULL,3,28,'2013-07-05 07:14:56.409318','2013-07-05 07:14:56.409318',NULL);
INSERT INTO "authentify_user_roles" VALUES(31,NULL,3,29,'2013-08-03 07:33:18.273683','2013-08-03 07:33:18.273683',NULL);
INSERT INTO "authentify_user_roles" VALUES(32,NULL,2,30,'2013-09-16 20:11:34.364879','2013-09-16 20:11:34.364879',NULL);
DROP TABLE IF EXISTS "authentify_users";
CREATE TABLE "authentify_users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "email" varchar(255), "login" varchar(255), "encrypted_password" varchar(255), "salt" varchar(255), "status" varchar(255) DEFAULT 'active', "last_updated_by_id" integer, "customer_id" integer, "auth_token" varchar(255), "password_reset_token" varchar(255), "password_reset_sent_at" datetime, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "brief_note" varchar(255));
INSERT INTO "authentify_users" VALUES(1,'develop admin','develop_admin@nbhy.com',NULL,'898a6057c6f1da6e8f66d76d6ce104022ee6a8849aea2014faa7af325c156da0','ea0f375c8a333c44422262ee144d221bc7263f5c6919c306a26b1ee60bd3c9e8','active',1,NULL,'WQ83FQCLgbWZ5Fe0HBGgKg',NULL,NULL,'2013-05-02 17:54:40.824091','2013-05-02 17:54:40.824091',NULL);
INSERT INTO "authentify_users" VALUES(2,'梅昆','mk@huayannb.com',NULL,'2c56caec9149dba392700cb0184f73a000d2a05aad02cf05a7b6cd95d501ecf6','a74253bdbd514a76b11acce3c3fa36e30293247795a324c2052d0c364d1dbcec','active',3,NULL,'o4weRFyDqYRjDbEhwlVjig',NULL,NULL,'2013-05-03 16:57:59.255628','2013-08-03 07:34:11.440647',NULL);
INSERT INTO "authentify_users" VALUES(3,'系统管理员','ssadmin417@nbhy.com',NULL,'aa11594d9c66fa7ce831269b34c2a9ff3fa22228a830f250532fe4ec67028a7d','e9daa1bc08e4d82484feb23dbe33a6fae409a59576150a68496621c4badb8256','active',1,NULL,'N6ZQKCBEikTYRBUoDzmY8Q',NULL,NULL,'2013-05-11 19:57:45.080195','2013-05-11 19:57:45.080195',NULL);
INSERT INTO "authentify_users" VALUES(4,'万锋','wf@huayannb.com',NULL,'ee56d859aa070738c042768119eef98ca6a74383d7d2505c3cd85c7af81b4012','d5c62b1f9e318f676341fd62585b3f7e339f59e35c1d25245159e0a6957475bd','active',3,NULL,'q1PiTF7WvkA91lF2fZf5ng',NULL,NULL,'2013-05-17 01:23:36.885750','2013-08-03 07:34:27.450294',NULL);
INSERT INTO "authentify_users" VALUES(5,'张喻','zy@huayannb.com',NULL,'610f1137b767b23a03cfa18dd8205885ecafbcfd180e9c3d122429251dd6aa62','9f37fdd15c3efbfc1564dbc887bdda3401a655c35994fc93824c59f18cdffe3a','active',3,NULL,'IHqHhD6yG3V7vQyas35IYQ',NULL,NULL,'2013-05-17 01:26:08.205240','2013-05-17 01:26:08.205240',NULL);
INSERT INTO "authentify_users" VALUES(6,'徐浩','xh@huayannb.com',NULL,'41e73fa01248d7b032c32bc01eea2f7aa6284fa1c23455e52a7ddbc6a405ce68','c2a0529e982c7a29ba38b5ee6c4006f41517d5f71ad48326ec3adf99dfdfdf7a','active',3,NULL,'44Yh7333DY8Ff_qZutfC-w',NULL,NULL,'2013-05-17 01:29:19.051191','2013-05-17 01:29:19.051191',NULL);
INSERT INTO "authentify_users" VALUES(7,'顾凯红','gkh@huayannb.com',NULL,'e5b13d18d92de07b7aaa3a263a81edea9233969b917ca188db8c08b479d3aac3','85fae192a4436ef41ac3f4c2ef5d4bf54a2c535cb4556a0b456e02b7d78555a5','active',3,NULL,'NkGnCuU77YqcIjm4__H-eg',NULL,NULL,'2013-05-17 01:30:34.158586','2013-05-17 01:30:34.158586',NULL);
INSERT INTO "authentify_users" VALUES(8,'钱云','qy@huayannb.com',NULL,'b29457d6f4244bd6d23398375fc0cd7738e09f50d6cbdd34bef45be79de45cd0','5506eaa726bde0b431bb6fb226925d39e2f99a64d4326591a1be6e943e26620c','active',3,NULL,'IsT2vT9MlkmJBh4hYdrZ9g',NULL,NULL,'2013-05-17 01:31:59.821904','2013-05-17 01:31:59.821904',NULL);
INSERT INTO "authentify_users" VALUES(9,'徐高松','xgs@huayannb.com',NULL,'2898ba9265995e93824317ca8ecfd130e57836cd9a3e5f9112ceba8b44a8350e','aee3fce8af3a0edebdd7d71046034aea600a1e1ebdb50c98fd7167a302fed93d','active',3,NULL,'PIVRglDgrV1TI1Wpx9PP9A',NULL,NULL,'2013-05-17 01:32:51.849244','2013-05-17 01:32:51.849244',NULL);
INSERT INTO "authentify_users" VALUES(10,'朱露露','zll@huayannb.com',NULL,'81d58fc1adf08de5e33f97f0ea23ef81bb3d48ffcae147dc720b36d9383f204e','4869752e912165032da7546232e2dd7e2010b11bbdc0aa8bdc7e1d475cc99675','active',3,NULL,'ZZGUlD-4T7n6ZB9357z35w',NULL,NULL,'2013-05-17 01:33:30.914403','2013-05-17 01:33:30.914403',NULL);
INSERT INTO "authentify_users" VALUES(11,'王益静','wyj@huayannb.com',NULL,'8f72a5d585673b762fb86da3fc486affc4771447c29ff0f478ecc33f0175619c','797cf0cce94dbafa65fc766a0455b94aea6227bf9d99b392a37f45b9996b6bc8','active',3,NULL,'BwLILnZd2yg4gm59JNM07g',NULL,NULL,'2013-05-17 01:34:03.381656','2013-05-17 01:34:03.381656',NULL);
INSERT INTO "authentify_users" VALUES(12,'梅胜泉','msq@huayannb.com',NULL,'324bfef27c3cac135223eceb92bc79b5dcf24c8bb1cf105f8b85b4572bfe3ceb','6c64f0dd0207f1ba7d8f32788453a225035edd84a8e440a58c9765aaff6a7eb2','active',3,NULL,'6zs2Gcmgo4Hn73QuNWBY8g',NULL,NULL,'2013-05-17 01:34:55.758584','2013-05-17 01:34:55.758584',NULL);
INSERT INTO "authentify_users" VALUES(13,'李晔','ly@huayannb.com',NULL,'3a99f0c149e7428a14bf9ec8a50e56be4a9fd28b24f51328957a90ec125e207a','dc956fefd233894bcbe0573915b0e21742f15e23ac27ac37ba5b0ef183746329','active',3,NULL,'lnY4a7nz9R-Ggf-s-Ve-Gg',NULL,NULL,'2013-05-17 01:35:27.613137','2013-05-17 01:35:27.613137',NULL);
INSERT INTO "authentify_users" VALUES(14,'唐文周','twz@huayannb.com',NULL,'be1bd0b0aeece604ef2a2ba155da4d9d2dccf89c45c18740b95bdf8892e8db5f','80d1afc56cd03eb3ca807a7d7400eed6d19abbee5fa72ae8bd2b3ca4747d79fe','active',3,NULL,'a8OBMHOiqReQkrrdDnbjsw',NULL,NULL,'2013-05-17 01:36:23.796328','2013-05-17 01:36:23.796328',NULL);
INSERT INTO "authentify_users" VALUES(15,'陈江','cj@huayannb.com',NULL,'8d6014d63a008b259278a15571e32dff1b566d518091bfd02bcff5b2bbb6f052','9ea8a0b612c57838293e6f1a5874dc903d59b6be0d27745179e3cd2b18457280','active',3,NULL,'SLvOGeQH_Akjkx_5PSEP7Q',NULL,NULL,'2013-05-17 01:36:45.368409','2013-05-17 01:36:45.368409',NULL);
INSERT INTO "authentify_users" VALUES(16,'王施平','wsp@huayannb.com',NULL,'12e2ead3bf57e4aed7525a1061b43c8c38794b8f0f4b48a3d6cd916c72775738','b248a7df92ba873919a96236ceb2cfa6c8d69981373f855793e4d5bd2ad710a1','active',3,NULL,'FHNzk4pWpZcwp17tjEQkXQ',NULL,NULL,'2013-05-17 01:37:10.451268','2013-05-17 01:37:10.451268',NULL);
INSERT INTO "authentify_users" VALUES(17,'赵龙杰','zlj@huayannb.com',NULL,'1d4a3905d4050ede7ca210306f91eabf103684d763117be13f8af148c6bc88f8','e5b4f95c2d9b94d8de66719a66219fcee063d67d78e5020eee6ca74056be4fe1','active',3,NULL,'dBa3XG3cSJ6VD8xBaqt5vw',NULL,NULL,'2013-05-17 01:37:42.679226','2013-05-17 01:37:42.679226',NULL);
INSERT INTO "authentify_users" VALUES(18,'黄顺丰','hsf@huayannb.com',NULL,'e136a987f0842f67c26dae1fb8cac9a1e33764a7c4d160f3618db7b60bd82c95','04591ec4a2afb8bdb803e9a7e17258288e61ea26130d358680cd124a632db204','active',3,NULL,'KX04KS3nmPwDuXgiP9wIPw',NULL,NULL,'2013-05-17 01:38:18.764824','2013-07-05 07:12:31.973235',NULL);
INSERT INTO "authentify_users" VALUES(19,'邵赛清','ssq@huayannb.com',NULL,'4223d2e68d90226e11b09726fd3d15a3d222aff22b4e2c6f3955310524201ee1','0ffeda075d7fa6e70030bcf4e66d446c3168b6cf32b23694edd1f2c3c1018d3b','active',3,NULL,'oRUb5JhCmfBZhRZTwLqY9g',NULL,NULL,'2013-05-17 01:38:48.460334','2013-05-17 01:38:48.460334',NULL);
INSERT INTO "authentify_users" VALUES(20,'张云丽','zyl@huayannb.com',NULL,'c6fd689a9b9043a259ad17e0741d1038ff6eb667b338885eaf4cb451b65aa655','965e8ef39c077a01c40bad9addbfac87b89e8d3eadd5869897145c5d417e8294','active',3,NULL,'qLeHm030C5e2vlSsC8dzkA',NULL,NULL,'2013-05-17 01:39:20.789935','2013-09-07 07:24:23.417806',NULL);
INSERT INTO "authentify_users" VALUES(21,'张培国','zpg@huayannb.com',NULL,'d5edd746a6b5f766591393eb24229fd3548741eb53d39f277e5fec2004f25489','9a808d23a571f7b5d66b47ce3d8d463cdc9ba2ab8d7c4ce77d28b8ee156b9e9f','active',3,NULL,'Cg8Gbx4SzjNzsoOQOj4zlg',NULL,NULL,'2013-05-17 01:39:50.686358','2013-05-17 01:39:50.686358',NULL);
INSERT INTO "authentify_users" VALUES(22,'周如勇','zry@huayannb.com',NULL,'2e5111c7325f0215275f68ea4595ad11351e66a01836bb2e09f87087c2fe153e','4156fb2b98a4d9d145f638993fda8b43eefe9d394ecebf18523e039eaf71ae6a','active',3,NULL,'YmcqpW2fO4XlsDlB4v4C0w',NULL,NULL,'2013-05-17 01:40:21.253904','2013-05-17 01:40:21.253904',NULL);
INSERT INTO "authentify_users" VALUES(23,'谢佳','juyuanxj@163.com',NULL,'3b193fe97ad22432bd65f4a82d17c532674f77b0276ad7eab9035df156d96e17','23f1acd52d569f045d8fe3d8949e1c8da5b8597273471276a2bf67dae14cde46','active',3,NULL,'Hhlx-AuwtByJuNssrnAA3w',NULL,NULL,'2013-05-17 01:42:01.967750','2013-05-17 01:42:01.967750',NULL);
INSERT INTO "authentify_users" VALUES(24,'张钧','zhangjun522@126.com',NULL,'0b4ac768f51fd26c66995682f9ab9abcb65b2a143ec6d88dbde637651586d5c3','c10f6cf530943c240b94d22b35a388520678203e304f350d30d857715f3833b6','active',3,NULL,'aalLk6SeTYesPgHY-DSAow',NULL,NULL,'2013-05-17 01:42:57.558760','2013-05-17 01:42:57.558760',NULL);
INSERT INTO "authentify_users" VALUES(25,'钟旭东','62458337@163.com',NULL,'487170f2a32af72f7b82b678012340b671b5a2f87814b44f6d7c62ac8c60398e','fac2c376db08441168c2cf2cf3af90b09588932079291bb10f741a35c628a227','active',3,NULL,'U-HWk6_xIowRkhSLZHMaRg',NULL,NULL,'2013-05-17 01:44:13.527365','2013-05-17 01:44:13.527365',NULL);
INSERT INTO "authentify_users" VALUES(26,'朱妍','408651039@qq.com',NULL,'c51107b2cc05c6c75b7d024101cdc54eb939d6e3f44d680430435d8c1232103a','0c8c94ba7e44eec7ea684f9c9ca986bca790c643d16d32a2efb4e0a6a8eeee72','active',3,NULL,'-kKLvkU2XGJRwitMMQKAyg',NULL,NULL,'2013-05-17 01:45:41.768662','2013-09-07 07:45:42.402146',NULL);
INSERT INTO "authentify_users" VALUES(27,'柯慧敏','khm@huayannb.com',NULL,'7d3d37d6d62ff35b9b5b64d0cc37835ac53f910d3776603e49127361027ca00f','64a206818f2f17b9b213100620d52d805260c2d50706d460f692c36401e973b4','active',3,NULL,'64C5lvQHo2-3RB376AEqwg',NULL,NULL,'2013-07-05 06:54:09.011554','2013-07-05 06:54:09.011554',NULL);
INSERT INTO "authentify_users" VALUES(28,'乐益','leyi@huayannb.com',NULL,'4747b4a53c408528e9f1f5c06992cef0668dd7416c86c3f910bdcdd297eb28bb','b1e445db30676c801b58efc15e33eea99deb7f7b510db85d7d04b64eb743c5c4','active',3,NULL,'l1Cq4yDTwx3kfoAKq5K91w',NULL,NULL,'2013-07-05 07:14:56.406871','2013-08-03 07:32:28.452866',NULL);
INSERT INTO "authentify_users" VALUES(29,'饶卫康','rwk@huayannb.com',NULL,'fc7a4fb0cacd8e383ef9931dfc4c6b549faa7fd98838feef739b82d813c71076','363b0bf588e9c2a6f06dacc26df60f387a3eb42b257b60f24529f7ddb368a547','active',3,NULL,'H90D17C1ZZbDgGMM0N0a-g',NULL,NULL,'2013-08-03 07:33:18.269177','2013-08-03 07:33:18.269177',NULL);
INSERT INTO "authentify_users" VALUES(30,'test_mail','acgtek@yahoo.com',NULL,'237d08e4944138b6cf62aeb0d50478bc55b6ce4fd0d97bd6bef85b37cadea7f4','0d834149ef90c6615dd2a02b9340e49132ff4d7b66ae64f052cca1196f873e39','active',30,NULL,'H5cj7_ZxWRgiTR1sp9s_uQ','MOmAcY3cxkdc2u-PKANCEg','2013-09-16 20:15:35.151900','2013-09-16 20:11:34.359876','2013-09-16 20:16:28.231357',NULL);
DROP TABLE IF EXISTS "authentify_zones";
CREATE TABLE "authentify_zones" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "zone_name" varchar(255), "brief_note" varchar(255), "active" boolean DEFAULT 't', "ranking_order" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "authentify_zones" VALUES(1,'宁波华研','宁波华研节能环保安全设计研究有限公司
','t',1,'','');
INSERT INTO "authentify_zones" VALUES(2,'镇海华研','宁波华研节能环保安全设计研究有限公司
宁波华研节能环保安全设计研究有限公司镇海分公司
宁波华研节能环保安全设计研究有限公司镇海分公司
宁波华研节能环保安全设计研究有限公司镇海分公司
宁波华研节能环保安全设计研究有限公司镇海分公司','t',2,'','');
INSERT INTO "authentify_zones" VALUES(3,'慈溪华研','宁波华研节能环保安全设计研究有限公司慈溪分公司','t',3,'','');
INSERT INTO "authentify_zones" VALUES(4,'奉化华研','宁波华研节能环保安全设计研究有限公司奉化分公司','t',4,'','');
INSERT INTO "authentify_zones" VALUES(5,'江北华研','宁波华研节能环保安全设计研究有限公司江北分公司','t',5,'','');
INSERT INTO "authentify_zones" VALUES(6,'余姚聚源','余姚聚源节能环保技术有限公司','t',6,'','');
INSERT INTO "authentify_zones" VALUES(7,'宁海华跃','宁海华跃节能环保智控技术有限公司','t',7,'','');
DROP TABLE IF EXISTS "commonx_logs";
CREATE TABLE "commonx_logs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "log" text, "resource_id" integer, "resource_name" varchar(255), "last_updated_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "commonx_logs" VALUES(1,'企业要上市',13,'projectx_tasks',20,'2013-09-07 07:28:08.297074','2013-09-07 07:28:08.297074');
DROP TABLE IF EXISTS "commonx_misc_definitions";
CREATE TABLE "commonx_misc_definitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "active" boolean DEFAULT 't', "for_which" varchar(255), "brief_note" text, "last_updated_by_id" integer, "ranking_index" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "commonx_misc_definitions" VALUES(1,'首次洽谈','t','customer_comm_category','',2,1,'2013-05-26 07:18:54.297513','2013-06-10 00:48:40.834047');
INSERT INTO "commonx_misc_definitions" VALUES(2,'签约前交流','t','customer_comm_category','',2,2,'2013-05-26 07:19:28.554313','2013-05-26 07:19:28.554313');
INSERT INTO "commonx_misc_definitions" VALUES(3,'政府发文名单','t','customer_status','未注明强制还是推荐类的',2,1,'2013-05-26 07:23:33.379533','2013-07-05 07:36:54.779281');
INSERT INTO "commonx_misc_definitions" VALUES(4,'咨询机构推荐','t','customer_status','',2,3,'2013-06-10 00:46:13.596056','2013-07-05 07:37:57.681643');
INSERT INTO "commonx_misc_definitions" VALUES(5,'工程公司推荐','t','customer_status','',2,3,'2013-06-10 00:47:28.958131','2013-07-05 07:38:06.183945');
INSERT INTO "commonx_misc_definitions" VALUES(6,'检测机构推荐','t','customer_status','',2,3,'2013-06-10 00:47:49.674678','2013-07-05 07:38:18.652734');
INSERT INTO "commonx_misc_definitions" VALUES(7,'实施人交流','t','customer_comm_category','签约并且项目分配后',2,3,'2013-06-10 00:49:26.661525','2013-06-10 00:49:31.962999');
INSERT INTO "commonx_misc_definitions" VALUES(8,'单位推荐','t','customer_status','其他类型的公司或单位',2,6,'2013-06-10 05:03:09.499376','2013-07-05 07:39:00.154796');
INSERT INTO "commonx_misc_definitions" VALUES(9,'个人推荐','t','customer_status','',2,6,'2013-06-10 05:03:48.088641','2013-07-05 07:39:13.833218');
INSERT INTO "commonx_misc_definitions" VALUES(10,'以前实施过的企业','t','customer_status','',2,8,'2013-06-10 05:04:29.302186','2013-06-10 05:04:29.302186');
INSERT INTO "commonx_misc_definitions" VALUES(11,'政府强制名单','t','customer_status','',2,1,'2013-07-05 07:35:33.522834','2013-07-05 07:35:33.522834');
INSERT INTO "commonx_misc_definitions" VALUES(12,'政府推荐实施名单','t','customer_status','',2,1,'2013-07-05 07:36:32.057547','2013-07-05 07:36:32.057547');
INSERT INTO "commonx_misc_definitions" VALUES(13,'ISO9000系','t','quality_system','',2,3,'2013-07-05 07:42:19.668061','2013-07-05 07:42:34.925730');
INSERT INTO "commonx_misc_definitions" VALUES(14,'ISO14001系','t','quality_system','',2,3,'2013-07-05 07:42:57.263755','2013-07-05 07:42:57.263755');
INSERT INTO "commonx_misc_definitions" VALUES(15,'无质量体系','t','quality_system','',2,1,'2013-07-05 07:43:13.346393','2013-07-05 07:43:13.346393');
INSERT INTO "commonx_misc_definitions" VALUES(16,'TS16949','t','quality_system','汽车及汽车配件行业.',2,2,'2013-07-05 07:43:41.568746','2013-07-29 13:04:22.325844');
INSERT INTO "commonx_misc_definitions" VALUES(17,'行业整治名单','t','customer_status','',2,1,'2013-08-05 07:54:26.127144','2013-08-05 07:54:26.127144');
INSERT INTO "commonx_misc_definitions" VALUES(18,'尚未联系','t','project_status','',2,1,'2013-05-24 23:39:42.904696','2013-06-10 00:23:57.071296');
INSERT INTO "commonx_misc_definitions" VALUES(19,'已联系尚未签约','t','project_status','',2,1,'2013-05-25 00:09:33.322624','2013-06-10 00:24:08.727083');
INSERT INTO "commonx_misc_definitions" VALUES(20,'已签约尚未分配','t','project_status','',2,1,'2013-05-25 00:12:39.782915','2013-06-10 00:39:16.234272');
INSERT INTO "commonx_misc_definitions" VALUES(21,'已分配尚未实施','t','project_status','',2,1,'2013-05-26 07:17:57.692791','2013-06-10 00:39:01.438988');
INSERT INTO "commonx_misc_definitions" VALUES(22,'前期联系(实施中)','t','project_status','基础资料收集',2,1,'2013-05-26 07:20:29.576721','2013-06-10 00:25:22.400157');
INSERT INTO "commonx_misc_definitions" VALUES(23,'现场考察(实施中)','t','project_status','',2,1,'2013-06-10 00:25:41.128045','2013-06-10 00:25:41.128045');
INSERT INTO "commonx_misc_definitions" VALUES(24,'报告编制(实施中)','t','project_status','准备出具报告',2,1,'2013-06-10 00:26:20.147498','2013-06-10 00:26:20.147498');
INSERT INTO "commonx_misc_definitions" VALUES(25,'初稿完成','t','project_status','',2,1,'2013-06-10 00:26:29.013339','2013-06-10 00:26:44.528229');
INSERT INTO "commonx_misc_definitions" VALUES(26,'送审稿完成','t','project_status','',2,1,'2013-06-10 00:27:07.438199','2013-06-10 00:27:07.438199');
INSERT INTO "commonx_misc_definitions" VALUES(27,'报批（修正）稿完成','t','project_status','能评为报批稿
清洁生产为修正稿',2,1,'2013-06-10 00:27:39.381405','2013-06-10 00:27:39.381405');
INSERT INTO "commonx_misc_definitions" VALUES(28,'项目需要调整','t','project_status','',2,1,'2013-06-10 00:27:54.209961','2013-06-10 00:27:54.209961');
INSERT INTO "commonx_misc_definitions" VALUES(29,'项目中止','t','project_status','不再执行',2,1,'2013-06-10 00:28:11.786395','2013-06-10 00:28:11.786395');
INSERT INTO "commonx_misc_definitions" VALUES(30,'报告存档','t','project_status','',2,1,'2013-06-10 00:29:00.127785','2013-06-10 00:39:57.873858');
INSERT INTO "commonx_misc_definitions" VALUES(31,'报告完结','t','project_status','报告完成并寄送到，发票开具并寄送到，款项全部到位',2,1,'2013-06-10 00:40:15.007930','2013-06-10 00:40:15.007930');
INSERT INTO "commonx_misc_definitions" VALUES(32,'尚未实施','t','task_status','',2,1,'2013-06-10 00:56:11.038608','2013-06-10 00:56:11.038608');
INSERT INTO "commonx_misc_definitions" VALUES(33,'实施过半','t','task_status','',2,3,'2013-06-10 00:56:19.729450','2013-07-05 07:09:25.561508');
INSERT INTO "commonx_misc_definitions" VALUES(34,'已完成','t','task_status','',2,6,'2013-07-05 07:07:07.387824','2013-09-07 07:14:56.927426');
INSERT INTO "commonx_misc_definitions" VALUES(35,'已启动','t','task_status','已联系好企业，项目实施的初始阶段',2,2,'2013-07-05 07:08:54.803129','2013-09-07 07:20:30.619165');
INSERT INTO "commonx_misc_definitions" VALUES(36,'已申请','t','task_status','',2,4,'2013-07-05 07:10:21.250089','2013-09-07 07:15:29.823381');
INSERT INTO "commonx_misc_definitions" VALUES(37,'即将完成','t','task_status','完成度90%',2,5,'2013-07-05 07:11:18.230887','2013-07-05 07:11:18.230887');
INSERT INTO "commonx_misc_definitions" VALUES(38,'已暂停','t','task_status','',2,7,'2013-09-07 07:15:46.915339','2013-09-07 07:15:46.915339');
DROP TABLE IF EXISTS "commonx_search_stat_configs";
CREATE TABLE "commonx_search_stat_configs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_name" varchar(255), "stat_function" text, "stat_summary_function" text, "labels_and_fields" text, "time_frame" varchar(255), "search_list_form" varchar(255), "search_where" text, "search_results_period_limit" text, "last_updated_by_id" integer, "brief_note" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "stat_header" varchar(255));
INSERT INTO "commonx_search_stat_configs" VALUES(1,'projectx_projects','{
:week => models.joins(:contract => :payments).all(:select => "strftime(''%Y/%m/%d'', projectx_projects.created_at) as Dates, sum(projectx_payments.paid_amount) as Payments", :group => "strftime(''%Y/%W'', projectx_projects.created_at)"),
:month => models.joins(:contract => :payments).all(:select => "strftime(''%Y/%m/%d'', projectx_projects.created_at) as Dates, sum(projectx_payments.paid_amount) as Payments", :group => "strftime(''%Y/%m'', projectx_projects.created_at)"),
:quart => models.joins(:contract => :payments).all(:select => "strftime(''%Y/%m/%d'', projectx_projects.created_at) as Dates, sum(projectx_payments.paid_amount) as Payments, 
CASE WHEN cast(strftime(''%m'', projectx_projects.created_at) as integer) BETWEEN 1 AND 3 THEN 1 WHEN cast(strftime(''%m'', projectx_projects.created_at) as integer) BETWEEN 4 and 6 THEN 2 WHEN cast(strftime(''%m'', projectx_projects.created_at) as integer) BETWEEN 7 and 9 THEN 3 ELSE 4 END as quarter",  :group => "strftime(''%Y'', projectx_projects.created_at), quarter"),
:year => models.joins(:contract => :payments).all(:select => "strftime(''%Y/%m/%d'', projectx_projects.created_at) as Dates, sum(projectx_payments.paid_amount) as Payments", :group => "strftime(''%Y'', projectx_projects.created_at)")
}','<%=t(''Payment Total($)'') %>:&nbsp;&nbsp;<%= number_with_precision(number_with_delimiter(@s_s_results_details.models.joins(:contract => :payments).sum(:paid_amount)), :precision => 2) %>
<%=t(''Contract Total($)'') %>:&nbsp;&nbsp;<%= number_with_precision(number_with_delimiter(@s_s_results_details.models.joins(:contract).sum(:contract_amount)), :precision => 2) %>','{
:start_date_s => { :label => t(''Start Date''), :as => :string, :input_html => {:size => 40}},
:end_date_s => { :label => t(''End Date''), :as => :string, :input_html => {:size => 40}},
:status_s => { :label => t(''Project Status''), :collection => return_misc_definitions(''project_status''), :label_method => :name, :value_method => :id,
                        :include_blank => true }, 
:project_task_template_id_s => { :label => t(''Project Type''), :collection => return_project_task_templates, :label_method => :name, :value_method => :id, 
                        :include_blank => true }, 
:keyword => { :label => t(''Keyword'')},
:zone_id_s => { :label => t(''Zone''), :collection => Authentify::Zone.where(:active => true).order(''ranking_order''),
              :label_method => :zone_name, :value_method => :id, :if => has_action_right?(''search'', ''projectx_projects'')},
:sales_id_s => {:collection => sales(), :label_method => :name, :value_method => :id, :prompt => t(''Select Sales''),
              :label => t(''Sales''), :if => has_action_right?(''search'', ''projectx_contracts'')},
:customer_id_s => {:collection => return_customers(), :label_method => :name, :value_method => :id, :prompt => t(''Choose Customer''),
                  :label => t(''Customer''), :if => has_action_right?("search", "projectx_projects") }
}
','[ t(''Week''),  t(''Month''),  t(''Quart''), t(''Year'')]','form_list','{
:project_id_s	=> Proc.new { models.where("projectx_projects.id = ?", params[:project][:project_id_s])},
:keyword		=> Proc.new { models.where("projectx_projects.name like ? ", "%#{params[:project][:keyword]}%")},
:start_date_s	=> Proc.new { models.where(''projectx_projects.created_at > ?'', params[:project][:start_date_s])},
:end_date_s		=> Proc.new { models.where(''projectx_projects.created_at < ?'', params[:project][:end_date_s])},
:customer_id_s	=> Proc.new { models.where(''projectx_projects.customer_id'' => params[:project][:customer_id_s] )},
:expedite_s		=> Proc.new { models.where(''projectx_projects.expedite'' => params[:project][:expedite_s])},
:completion_percent_s	=> Proc.new { models.where(''projectx_projects.completion_percent'' => params[:project][:completion_percent_s])},
:sales_id_s		=> Proc.new { models.where(''projectx_projects.sales_id'' => params[:project][:sales_id_s]) }
}','Proc.new { models.where(''projectx_projects.created_at > ?'', search_stats_max_period_year.years.ago) }',NULL,NULL,'2013-09-18','2013-09-18','Dates, Payment Total');
DROP TABLE IF EXISTS "customerx_addresses";
CREATE TABLE "customerx_addresses" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "province" varchar(255), "city_county_district" varchar(255), "add_line" varchar(255), "customer_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "customerx_addresses" VALUES(1,'浙江省','宁波','北仑区480号',1,'2013-06-03 15:18:31.059954','2013-06-10 05:05:41.659487');
INSERT INTO "customerx_addresses" VALUES(2,'浙江省','宁波','宁海县',2,'2013-06-10 05:19:17.890847','2013-06-10 05:19:17.890847');
INSERT INTO "customerx_addresses" VALUES(3,'浙江省','余姚','保庆路331号',3,'2013-06-10 05:21:11.540346','2013-06-10 05:21:11.540346');
INSERT INTO "customerx_addresses" VALUES(4,'浙江省','宁波鄞州区','云龙镇',4,'2013-07-05 07:01:57.925934','2013-07-05 07:01:57.925934');
INSERT INTO "customerx_addresses" VALUES(5,'浙江省','宁波鄞州区','云龙镇甲村',5,'2013-07-05 07:32:32.491898','2013-07-05 07:32:32.491898');
INSERT INTO "customerx_addresses" VALUES(6,'浙江省','宁波市鄞州区','云龙镇上李家工业区',6,'2013-07-05 07:48:52.521147','2013-07-05 07:48:52.521147');
INSERT INTO "customerx_addresses" VALUES(7,'浙江省','宁波市鄞州区','云龙镇',7,'2013-07-05 07:51:03.232719','2013-07-05 07:51:03.232719');
INSERT INTO "customerx_addresses" VALUES(8,'浙江省','宁波市北仑区','小港经济技术开发区',8,'2013-07-05 08:15:10.569495','2013-07-05 08:15:10.569495');
INSERT INTO "customerx_addresses" VALUES(9,'浙江省','宁波市北仑区','1111',9,'2013-08-05 07:52:19.734188','2013-08-05 07:55:57.831741');
INSERT INTO "customerx_addresses" VALUES(10,'浙江省','宁波市北仑区','1111',10,'2013-08-05 07:53:45.506877','2013-08-05 07:53:45.506877');
INSERT INTO "customerx_addresses" VALUES(11,'浙江省','宁波市北仑区','1111',11,'2013-08-05 07:55:45.083684','2013-08-05 07:55:45.083684');
INSERT INTO "customerx_addresses" VALUES(12,'浙江省','宁波市北仑区','1111',12,'2013-08-05 07:56:42.819789','2013-08-05 07:56:42.819789');
INSERT INTO "customerx_addresses" VALUES(13,'浙江省','宁波市北仑区','1111',13,'2013-08-05 07:57:29.274985','2013-08-05 07:57:29.274985');
INSERT INTO "customerx_addresses" VALUES(14,'浙江省','宁波市北仑区','1111',14,'2013-08-05 07:58:03.503548','2013-08-05 07:58:03.503548');
INSERT INTO "customerx_addresses" VALUES(15,'浙江省','宁波市北仑区','1111',15,'2013-08-05 07:58:43.529726','2013-08-05 07:58:43.529726');
INSERT INTO "customerx_addresses" VALUES(16,'浙江省','宁波市北仑区','1111',16,'2013-08-05 07:59:21.657146','2013-08-05 07:59:21.657146');
INSERT INTO "customerx_addresses" VALUES(17,'浙江省','宁波市北仑区','1111',17,'2013-08-05 08:00:00.655384','2013-08-05 08:00:00.655384');
INSERT INTO "customerx_addresses" VALUES(18,'浙江省','宁波市北仑区','1111',18,'2013-08-05 08:00:35.192555','2013-08-05 08:00:35.192555');
INSERT INTO "customerx_addresses" VALUES(19,'浙江省','宁波市北仑区','1111',19,'2013-08-05 08:01:33.921812','2013-08-05 08:01:33.921812');
INSERT INTO "customerx_addresses" VALUES(20,'浙江省','宁波市北仑区','1111',20,'2013-08-05 08:02:14.300800','2013-08-05 08:02:14.300800');
INSERT INTO "customerx_addresses" VALUES(21,'浙江省','宁波市北仑区','1111',21,'2013-08-05 08:02:54.988624','2013-08-05 08:02:54.988624');
INSERT INTO "customerx_addresses" VALUES(22,'浙江省','宁波市北仑区','1111',22,'2013-08-05 08:03:36.545000','2013-08-05 08:03:36.545000');
INSERT INTO "customerx_addresses" VALUES(23,'浙江省','宁波市北仑区','1111',23,'2013-08-05 08:04:09.387399','2013-08-05 08:04:09.387399');
INSERT INTO "customerx_addresses" VALUES(24,'浙江省','宁波市北仑区','1111',24,'2013-08-05 08:04:41.473970','2013-08-05 08:04:41.473970');
INSERT INTO "customerx_addresses" VALUES(25,'浙江省','宁波市北仑区','1111',25,'2013-08-05 08:05:14.658869','2013-08-05 08:05:14.658869');
INSERT INTO "customerx_addresses" VALUES(26,'浙江省','宁波市北仑区','1111',26,'2013-08-05 08:05:50.196748','2013-08-05 08:05:50.196748');
INSERT INTO "customerx_addresses" VALUES(27,'浙江省','宁波市北仑区','1111',27,'2013-08-05 08:06:26.137846','2013-08-05 08:06:26.137846');
INSERT INTO "customerx_addresses" VALUES(28,'浙江省','宁波市北仑区','1111',28,'2013-08-05 08:06:58.946426','2013-08-05 08:06:58.946426');
INSERT INTO "customerx_addresses" VALUES(29,'浙江省','宁波市北仑区','1111',29,'2013-08-05 08:07:34.384630','2013-08-05 08:07:34.384630');
INSERT INTO "customerx_addresses" VALUES(30,'浙江省','宁波市北仑区','1111',30,'2013-08-05 08:08:10.869528','2013-08-05 08:08:10.869528');
INSERT INTO "customerx_addresses" VALUES(31,'浙江省','宁波市北仑区','1111',31,'2013-08-05 08:09:00.577815','2013-08-05 08:09:00.577815');
INSERT INTO "customerx_addresses" VALUES(32,'浙江省','宁波市北仑区','1111',32,'2013-08-05 08:09:36.643285','2013-08-05 08:09:36.643285');
INSERT INTO "customerx_addresses" VALUES(33,'浙江省','宁波市北仑区','1111',33,'2013-08-05 08:10:16.113606','2013-08-05 08:10:16.113606');
INSERT INTO "customerx_addresses" VALUES(34,'浙江省','宁波市保税区','1111',34,'2013-08-05 08:11:07.240094','2013-08-05 08:11:07.240094');
INSERT INTO "customerx_addresses" VALUES(35,'浙江省','宁波市保税区','1111',35,'2013-08-05 08:11:41.701775','2013-08-05 08:11:41.701775');
INSERT INTO "customerx_addresses" VALUES(36,'浙江省','宁波市鄞州区','1111',36,'2013-08-05 08:12:26.679824','2013-08-05 08:12:26.679824');
INSERT INTO "customerx_addresses" VALUES(37,'浙江省','宁波市鄞州区','1111',37,'2013-08-05 08:12:57.401853','2013-08-05 08:12:57.401853');
INSERT INTO "customerx_addresses" VALUES(38,'浙江省','宁波市鄞州区','1111',38,'2013-08-05 08:13:26.748045','2013-08-05 08:13:26.748045');
INSERT INTO "customerx_addresses" VALUES(39,'浙江省','宁波市鄞州区','1111',39,'2013-08-05 08:13:56.353256','2013-08-05 08:13:56.353256');
INSERT INTO "customerx_addresses" VALUES(40,'浙江省','宁波市鄞州区','1111',40,'2013-08-05 08:14:28.260511','2013-08-05 08:14:28.260511');
INSERT INTO "customerx_addresses" VALUES(41,'浙江省','宁波市鄞州区','1111',41,'2013-08-05 08:15:01.075455','2013-08-05 08:15:01.075455');
INSERT INTO "customerx_addresses" VALUES(42,'浙江省','宁波市鄞州区','1111',42,'2013-08-05 08:15:30.956087','2013-08-05 08:15:30.956087');
INSERT INTO "customerx_addresses" VALUES(43,'浙江省','宁波市鄞州区','1111',43,'2013-08-05 08:16:21.720851','2013-08-05 08:16:21.720851');
INSERT INTO "customerx_addresses" VALUES(44,'浙江省','宁波市鄞州区','1111',44,'2013-08-05 08:18:39.235027','2013-08-05 08:18:39.235027');
INSERT INTO "customerx_addresses" VALUES(45,'浙江省','宁波市鄞州区','1111',45,'2013-08-05 08:19:18.629439','2013-08-05 08:19:18.629439');
INSERT INTO "customerx_addresses" VALUES(46,'浙江省','宁波市鄞州区','北仑区',46,'2013-08-05 08:19:51.236292','2013-08-05 08:19:51.236292');
INSERT INTO "customerx_addresses" VALUES(47,'浙江省','宁波市鄞州区','1111',47,'2013-08-05 08:40:27.241312','2013-08-05 08:40:27.241312');
INSERT INTO "customerx_addresses" VALUES(48,'浙江省','宁波市鄞州区','1111',48,'2013-08-05 08:42:44.502029','2013-08-05 08:42:44.502029');
INSERT INTO "customerx_addresses" VALUES(49,'浙江省','宁波市鄞州区','1111',49,'2013-08-05 08:43:58.124708','2013-08-05 08:43:58.124708');
INSERT INTO "customerx_addresses" VALUES(50,'浙江省','宁波市鄞州区','1111',50,'2013-08-05 08:45:06.181927','2013-08-05 08:45:06.181927');
INSERT INTO "customerx_addresses" VALUES(51,'浙江省','宁波市鄞州区','1111',51,'2013-08-05 08:46:49.972084','2013-08-05 08:46:49.972084');
INSERT INTO "customerx_addresses" VALUES(52,'浙江省','宁波市鄞州区','1111',52,'2013-08-05 08:47:41.702986','2013-08-05 08:47:41.702986');
INSERT INTO "customerx_addresses" VALUES(53,'浙江省','宁波市鄞州区','1111',53,'2013-08-05 08:48:39.238112','2013-08-05 08:48:39.238112');
INSERT INTO "customerx_addresses" VALUES(54,'浙江省','宁波市鄞州区','1111',54,'2013-08-05 08:50:48.031683','2013-08-05 08:50:48.031683');
INSERT INTO "customerx_addresses" VALUES(55,'浙江省','宁波市鄞州区','1111',55,'2013-08-05 08:52:02.696182','2013-08-05 08:52:02.696182');
INSERT INTO "customerx_addresses" VALUES(56,'浙江省','宁波市鄞州区','1111',56,'2013-08-05 08:53:00.811678','2013-08-05 08:53:00.811678');
INSERT INTO "customerx_addresses" VALUES(57,'浙江省','宁波市鄞州区','1111',57,'2013-08-05 08:53:50.541511','2013-08-05 08:53:50.541511');
INSERT INTO "customerx_addresses" VALUES(58,'浙江省','宁波市镇海区','1111',58,'2013-08-05 08:54:57.151825','2013-08-05 08:54:57.151825');
INSERT INTO "customerx_addresses" VALUES(59,'浙江省','宁波市镇海区','1111',59,'2013-08-05 08:56:07.776156','2013-08-05 08:56:07.776156');
INSERT INTO "customerx_addresses" VALUES(60,'浙江省','余姚市','1111',60,'2013-08-06 00:22:47.222546','2013-08-06 00:22:47.222546');
INSERT INTO "customerx_addresses" VALUES(61,'浙江省','余姚市','1111',61,'2013-08-06 00:23:48.903082','2013-08-06 00:23:48.903082');
INSERT INTO "customerx_addresses" VALUES(62,'浙江省','余姚市','1111',62,'2013-08-06 00:24:43.353658','2013-08-06 00:24:43.353658');
INSERT INTO "customerx_addresses" VALUES(63,'浙江省','余姚市','1111',63,'2013-08-06 00:25:29.355269','2013-08-06 00:25:29.355269');
INSERT INTO "customerx_addresses" VALUES(64,'浙江省','宁波市宁海县','1111',64,'2013-08-06 00:26:21.926055','2013-08-06 00:26:21.926055');
INSERT INTO "customerx_addresses" VALUES(65,'浙江省','宁波市宁海县','1111',65,'2013-08-06 00:27:24.737254','2013-08-06 00:27:24.737254');
INSERT INTO "customerx_addresses" VALUES(66,'浙江省','慈溪市','1111',66,'2013-08-06 00:28:32.084931','2013-08-06 00:28:32.084931');
INSERT INTO "customerx_addresses" VALUES(67,'浙江省','慈溪市','1111',67,'2013-08-06 00:34:40.580756','2013-08-06 00:34:40.580756');
INSERT INTO "customerx_addresses" VALUES(68,'浙江省','慈溪市','1111',68,'2013-08-06 00:35:44.437927','2013-08-06 00:35:44.437927');
INSERT INTO "customerx_addresses" VALUES(69,'浙江省','慈溪市','1111',69,'2013-08-06 00:36:29.235843','2013-08-06 00:36:29.235843');
INSERT INTO "customerx_addresses" VALUES(70,'浙江省','慈溪市','1111',70,'2013-08-06 00:37:15.369813','2013-08-06 00:37:15.369813');
INSERT INTO "customerx_addresses" VALUES(71,'浙江省','慈溪市','1111',71,'2013-08-06 00:38:06.292773','2013-08-06 00:38:06.292773');
INSERT INTO "customerx_addresses" VALUES(72,'浙江省','慈溪市','1111',72,'2013-08-06 00:38:55.062154','2013-08-06 00:38:55.062154');
INSERT INTO "customerx_addresses" VALUES(73,'浙江省','慈溪市','1111',73,'2013-08-06 00:40:23.275201','2013-08-06 00:40:23.275201');
INSERT INTO "customerx_addresses" VALUES(74,'浙江省','慈溪市','1111',74,'2013-08-06 00:41:08.029574','2013-08-06 00:41:08.029574');
INSERT INTO "customerx_addresses" VALUES(75,'浙江省','慈溪市','1111',75,'2013-08-06 00:41:49.346997','2013-08-06 00:41:49.346997');
INSERT INTO "customerx_addresses" VALUES(76,'浙江省','慈溪市','1111',76,'2013-08-06 00:42:32.608011','2013-08-06 00:42:32.608011');
INSERT INTO "customerx_addresses" VALUES(77,'浙江省','慈溪市','1111',77,'2013-08-06 00:43:31.909001','2013-08-06 00:43:31.909001');
INSERT INTO "customerx_addresses" VALUES(78,'浙江省','慈溪市','1111',78,'2013-08-06 00:44:11.685591','2013-08-06 00:44:11.685591');
INSERT INTO "customerx_addresses" VALUES(79,'浙江省','慈溪市','1111',79,'2013-08-06 00:44:52.122082','2013-08-06 00:44:52.122082');
INSERT INTO "customerx_addresses" VALUES(80,'浙江省','慈溪市','1111',80,'2013-08-06 00:45:29.321551','2013-08-06 00:45:29.321551');
INSERT INTO "customerx_addresses" VALUES(81,'浙江省','慈溪市','1111',81,'2013-08-06 00:47:21.569554','2013-08-06 00:47:21.569554');
INSERT INTO "customerx_addresses" VALUES(82,'浙江省','慈溪市','1111',82,'2013-08-06 00:48:23.880712','2013-08-06 00:48:23.880712');
INSERT INTO "customerx_addresses" VALUES(83,'浙江省','慈溪市','1111',83,'2013-08-06 00:49:08.835114','2013-08-06 00:49:08.835114');
INSERT INTO "customerx_addresses" VALUES(84,'浙江省','慈溪市','1111',84,'2013-08-06 00:49:46.490127','2013-08-06 00:49:46.490127');
INSERT INTO "customerx_addresses" VALUES(85,'浙江省','慈溪市','1111',85,'2013-08-06 00:50:24.797926','2013-08-06 00:50:24.797926');
INSERT INTO "customerx_addresses" VALUES(86,'浙江省','慈溪市','1111',86,'2013-08-06 00:51:00.797682','2013-08-06 00:51:00.797682');
INSERT INTO "customerx_addresses" VALUES(87,'浙江省','杭州湾','1111',87,'2013-08-06 01:01:24.158489','2013-08-06 01:01:24.158489');
INSERT INTO "customerx_addresses" VALUES(88,'浙江省','杭州湾','1111',88,'2013-08-06 01:02:11.016103','2013-08-06 01:02:11.016103');
INSERT INTO "customerx_addresses" VALUES(89,'浙江省','杭州湾','1111',89,'2013-08-06 01:02:51.637204','2013-08-06 01:02:51.637204');
INSERT INTO "customerx_addresses" VALUES(90,'浙江省','杭州湾','1111',90,'2013-08-06 01:03:33.784076','2013-08-06 01:03:33.784076');
INSERT INTO "customerx_addresses" VALUES(91,'浙江省','临安市','1111',91,'2013-08-06 01:04:18.998032','2013-08-06 01:04:18.998032');
INSERT INTO "customerx_addresses" VALUES(92,'浙江省','临安市','1111',92,'2013-08-06 01:05:06.843950','2013-08-06 01:05:06.843950');
INSERT INTO "customerx_addresses" VALUES(93,'浙江省','宁波市北仑区','1111',93,'2013-08-06 01:06:53.252415','2013-08-06 01:06:53.252415');
INSERT INTO "customerx_addresses" VALUES(94,'浙江省','宁波市北仑区','1111',94,'2013-08-06 01:07:47.634159','2013-08-06 01:07:47.634159');
INSERT INTO "customerx_addresses" VALUES(95,'浙江省','宁波市北仑区','1111',95,'2013-08-06 01:08:50.411072','2013-08-06 01:08:50.411072');
INSERT INTO "customerx_addresses" VALUES(96,'浙江省','宁波市北仑区','1111',96,'2013-08-06 01:09:37.088511','2013-08-06 01:09:37.088511');
INSERT INTO "customerx_addresses" VALUES(97,'浙江省','宁波市北仑区','1111',97,'2013-08-06 01:10:26.558706','2013-08-06 01:10:26.558706');
INSERT INTO "customerx_addresses" VALUES(98,'浙江省','宁波市北仑区','1111',98,'2013-08-06 01:11:17.090053','2013-08-06 01:11:17.090053');
INSERT INTO "customerx_addresses" VALUES(99,'浙江省','宁波市北仑区','1111',99,'2013-08-06 01:12:30.138312','2013-08-06 01:12:30.138312');
INSERT INTO "customerx_addresses" VALUES(100,'浙江省','宁波市北仑区','1111',100,'2013-08-06 01:13:12.856000','2013-08-06 01:13:12.856000');
INSERT INTO "customerx_addresses" VALUES(101,'浙江省','宁波市北仑区','1111',101,'2013-08-06 01:14:08.066827','2013-08-06 01:14:08.066827');
INSERT INTO "customerx_addresses" VALUES(102,'浙江省','宁波市北仑区','1111',102,'2013-08-06 01:14:55.917487','2013-08-06 01:14:55.917487');
INSERT INTO "customerx_addresses" VALUES(103,'浙江省','宁波市北仑区','1111',103,'2013-08-06 01:15:38.548249','2013-08-06 01:15:38.548249');
INSERT INTO "customerx_addresses" VALUES(104,'浙江省','宁波市北仑区','1111',104,'2013-08-06 01:16:25.411253','2013-08-06 01:16:25.411253');
INSERT INTO "customerx_addresses" VALUES(105,'浙江省','宁波市北仑区','1111',105,'2013-08-06 01:17:07.357151','2013-08-06 01:17:07.357151');
INSERT INTO "customerx_addresses" VALUES(106,'浙江省','宁波市北仑区','1111',106,'2013-08-06 01:17:47.111215','2013-08-06 01:17:47.111215');
INSERT INTO "customerx_addresses" VALUES(107,'浙江省','宁波市北仑区','1111',107,'2013-08-06 01:18:33.188050','2013-08-06 01:18:33.188050');
INSERT INTO "customerx_addresses" VALUES(108,'浙江省','宁波市北仑区','1111',108,'2013-08-06 01:19:31.820717','2013-08-06 01:19:31.820717');
INSERT INTO "customerx_addresses" VALUES(109,'浙江省','宁波市北仑区','1111',109,'2013-08-06 01:22:47.543313','2013-08-06 01:22:47.543313');
INSERT INTO "customerx_addresses" VALUES(110,'浙江省','宁波市北仑区','1111',110,'2013-08-06 01:23:32.822829','2013-08-06 01:23:32.822829');
INSERT INTO "customerx_addresses" VALUES(111,'浙江省','宁波市北仑区','1111',111,'2013-08-06 01:24:17.622973','2013-08-06 01:24:17.622973');
INSERT INTO "customerx_addresses" VALUES(112,'浙江省','宁波市北仑区','1111',112,'2013-08-06 01:25:08.014009','2013-08-06 01:25:08.014009');
INSERT INTO "customerx_addresses" VALUES(113,'浙江省','宁波市北仑区','1111',113,'2013-08-06 01:25:55.092605','2013-08-06 01:25:55.092605');
INSERT INTO "customerx_addresses" VALUES(114,'浙江省','宁波市北仑区','1111',114,'2013-08-06 01:26:33.613539','2013-08-06 01:26:33.613539');
INSERT INTO "customerx_addresses" VALUES(115,'浙江省','宁波市北仑区','1111',115,'2013-08-06 01:27:43.387261','2013-08-06 01:27:43.387261');
INSERT INTO "customerx_addresses" VALUES(116,'浙江省','宁波市北仑区','1111',116,'2013-08-06 01:28:24.833732','2013-08-06 01:28:24.833732');
INSERT INTO "customerx_addresses" VALUES(117,'浙江省','宁波市北仑区','1111',117,'2013-08-06 01:29:14.042993','2013-08-06 01:29:14.042993');
INSERT INTO "customerx_addresses" VALUES(118,'浙江省','宁波市北仑区','1111',118,'2013-08-06 01:29:57.442689','2013-08-06 01:29:57.442689');
INSERT INTO "customerx_addresses" VALUES(119,'浙江省','宁波市北仑区','1111',119,'2013-08-06 01:34:37.630931','2013-08-06 01:34:37.630931');
INSERT INTO "customerx_addresses" VALUES(120,'浙江省','宁波市北仑区','1111',120,'2013-08-06 01:35:29.386959','2013-08-06 01:35:29.386959');
INSERT INTO "customerx_addresses" VALUES(121,'浙江省','宁波市北仑区','1111',121,'2013-08-06 01:36:12.616652','2013-08-06 01:36:12.616652');
INSERT INTO "customerx_addresses" VALUES(122,'浙江省','宁波市北仑区','1111',122,'2013-08-06 01:36:53.180707','2013-08-06 01:36:53.180707');
INSERT INTO "customerx_addresses" VALUES(123,'浙江省','宁波市北仑区','1111',123,'2013-08-06 01:37:37.048532','2013-08-06 01:37:37.048532');
INSERT INTO "customerx_addresses" VALUES(124,'浙江省','宁波市保税区','1111',124,'2013-08-06 01:38:19.933546','2013-08-06 01:38:19.933546');
INSERT INTO "customerx_addresses" VALUES(125,'浙江省','宁波市江东区','1111',125,'2013-08-06 01:39:07.461586','2013-08-06 01:39:07.461586');
INSERT INTO "customerx_addresses" VALUES(126,'浙江省','宁波市江北区','1111',126,'2013-08-06 01:39:50.474827','2013-08-06 01:39:50.474827');
INSERT INTO "customerx_addresses" VALUES(127,'浙江省','宁波市鄞州区','1111',127,'2013-08-06 01:40:37.916680','2013-08-06 01:40:37.916680');
INSERT INTO "customerx_addresses" VALUES(128,'浙江省','宁波市鄞州区','1111',128,'2013-08-06 01:41:21.904991','2013-08-06 01:41:21.904991');
INSERT INTO "customerx_addresses" VALUES(129,'浙江省','宁波市鄞州区','1111',129,'2013-08-06 01:42:06.163204','2013-08-06 01:42:06.163204');
INSERT INTO "customerx_addresses" VALUES(130,'浙江省','宁波市鄞州区','1111',130,'2013-08-06 01:42:49.843675','2013-08-06 01:42:49.843675');
INSERT INTO "customerx_addresses" VALUES(131,'浙江省','宁波市鄞州区','1111',131,'2013-08-06 01:43:29.301646','2013-08-06 01:43:29.301646');
INSERT INTO "customerx_addresses" VALUES(132,'浙江省','宁波市鄞州区','1111',132,'2013-08-06 01:44:10.887274','2013-08-06 01:44:10.887274');
INSERT INTO "customerx_addresses" VALUES(133,'浙江省','宁波市鄞州区','1111',133,'2013-08-06 01:44:48.280362','2013-08-06 01:44:48.280362');
INSERT INTO "customerx_addresses" VALUES(134,'浙江省','宁波市鄞州区','1111',134,'2013-08-06 01:45:31.778264','2013-08-06 01:45:31.778264');
INSERT INTO "customerx_addresses" VALUES(135,'浙江省','宁波鄞州区','1111',135,'2013-08-06 01:46:18.328563','2013-08-06 01:46:18.328563');
INSERT INTO "customerx_addresses" VALUES(136,'浙江省','宁波市鄞州区','1111',136,'2013-08-06 01:46:53.438067','2013-08-06 01:46:53.438067');
INSERT INTO "customerx_addresses" VALUES(137,'浙江省','宁波市鄞州区','1111',137,'2013-08-06 01:47:51.368482','2013-08-06 01:47:51.368482');
INSERT INTO "customerx_addresses" VALUES(138,'浙江省','宁波市鄞州区','1111',138,'2013-08-06 01:48:30.647756','2013-08-06 01:48:30.647756');
INSERT INTO "customerx_addresses" VALUES(139,'浙江省','宁波市鄞州区','1111',139,'2013-08-06 01:49:17.543420','2013-08-06 01:49:17.543420');
INSERT INTO "customerx_addresses" VALUES(140,'浙江省','宁波市鄞州区','1111',140,'2013-08-06 01:49:56.064203','2013-08-06 01:49:56.064203');
INSERT INTO "customerx_addresses" VALUES(141,'浙江省','宁波市鄞州区','1111',141,'2013-08-06 01:50:34.563742','2013-08-06 01:50:34.563742');
INSERT INTO "customerx_addresses" VALUES(142,'浙江省','宁波市鄞州区','1111',142,'2013-08-06 01:51:16.043062','2013-08-06 01:51:16.043062');
INSERT INTO "customerx_addresses" VALUES(143,'浙江省','宁波市鄞州区','1111',143,'2013-08-06 01:51:55.054887','2013-08-06 01:51:55.054887');
INSERT INTO "customerx_addresses" VALUES(144,'浙江省','宁波市鄞州区','1111',144,'2013-08-06 01:52:52.159951','2013-08-06 01:52:52.159951');
INSERT INTO "customerx_addresses" VALUES(145,'浙江省','宁波市鄞州区','1111',145,'2013-08-06 01:53:35.914603','2013-08-06 01:53:35.914603');
INSERT INTO "customerx_addresses" VALUES(146,'浙江省','宁波市鄞州区','1111',146,'2013-08-06 01:54:30.094433','2013-08-06 01:54:30.094433');
INSERT INTO "customerx_addresses" VALUES(147,'浙江省','宁波市鄞州区','1111',147,'2013-08-06 01:55:17.017364','2013-08-06 01:55:17.017364');
INSERT INTO "customerx_addresses" VALUES(148,'浙江省','宁波市鄞州区','1111',148,'2013-08-06 01:56:07.403069','2013-08-06 01:56:07.403069');
INSERT INTO "customerx_addresses" VALUES(149,'浙江省','宁波市鄞州区','1111',149,'2013-08-06 01:56:45.440820','2013-08-06 01:56:45.440820');
INSERT INTO "customerx_addresses" VALUES(150,'浙江省','宁波市宁海县','1111',150,'2013-08-06 01:57:35.599278','2013-08-06 01:57:35.599278');
INSERT INTO "customerx_addresses" VALUES(151,'浙江省','宁波市宁海县','1111',151,'2013-08-06 01:58:13.183248','2013-08-06 01:58:13.183248');
INSERT INTO "customerx_addresses" VALUES(152,'浙江省','宁波市宁海县','1111',152,'2013-08-06 01:58:53.849785','2013-08-06 01:58:53.849785');
INSERT INTO "customerx_addresses" VALUES(153,'浙江省','宁波市宁海县','1111',153,'2013-08-06 01:59:32.231540','2013-08-06 01:59:32.231540');
INSERT INTO "customerx_addresses" VALUES(154,'浙江省','宁波市宁海县','1111',154,'2013-08-06 02:00:10.642319','2013-08-06 02:00:10.642319');
INSERT INTO "customerx_addresses" VALUES(155,'浙江省','宁波市宁海县','1111',155,'2013-08-06 02:00:49.278963','2013-08-06 02:00:49.278963');
INSERT INTO "customerx_addresses" VALUES(156,'浙江省','宁波市宁海县','1111',156,'2013-08-06 02:01:47.206573','2013-08-06 02:01:47.206573');
INSERT INTO "customerx_addresses" VALUES(157,'浙江省','宁波市宁海县','1111',157,'2013-08-06 02:02:35.509303','2013-08-06 02:02:35.509303');
INSERT INTO "customerx_addresses" VALUES(158,'浙江省','奉化市','1111',158,'2013-08-06 02:04:00.050624','2013-08-06 02:04:00.050624');
INSERT INTO "customerx_addresses" VALUES(159,'浙江省','奉化市','1111',159,'2013-08-06 02:05:10.144617','2013-08-06 02:05:10.144617');
INSERT INTO "customerx_addresses" VALUES(160,'浙江省','余姚市','1111',160,'2013-08-06 02:05:49.847768','2013-08-06 02:05:49.847768');
INSERT INTO "customerx_addresses" VALUES(161,'浙江省','余姚市','1111',161,'2013-08-06 02:06:36.734212','2013-08-06 02:06:36.734212');
INSERT INTO "customerx_addresses" VALUES(162,'浙江省','余姚市','1111',162,'2013-08-06 02:07:14.638647','2013-08-06 02:07:14.638647');
INSERT INTO "customerx_addresses" VALUES(163,'浙江省','余姚市','1111',163,'2013-08-06 02:08:04.664185','2013-08-06 02:08:04.664185');
INSERT INTO "customerx_addresses" VALUES(164,'浙江省','余姚市','1111',164,'2013-08-06 02:08:43.171519','2013-08-06 02:08:43.171519');
INSERT INTO "customerx_addresses" VALUES(165,'浙江省','余姚市','1111',165,'2013-08-06 02:09:32.167065','2013-08-06 02:09:32.167065');
INSERT INTO "customerx_addresses" VALUES(166,'浙江省','余姚市','1111',166,'2013-08-06 02:10:39.107850','2013-08-06 02:10:39.107850');
INSERT INTO "customerx_addresses" VALUES(167,'浙江省','杭州湾新区','1111',167,'2013-08-06 02:11:28.868363','2013-08-06 02:11:28.868363');
INSERT INTO "customerx_addresses" VALUES(168,'浙江省','杭州湾新区','1111',168,'2013-08-06 02:12:08.334569','2013-08-06 02:12:08.334569');
INSERT INTO "customerx_addresses" VALUES(169,'浙江省','杭州湾新区','1111',169,'2013-08-06 02:12:46.677574','2013-08-06 02:12:46.677574');
INSERT INTO "customerx_addresses" VALUES(170,'浙江省','慈溪市','1111',170,'2013-08-06 02:16:14.994321','2013-08-06 02:16:14.994321');
INSERT INTO "customerx_addresses" VALUES(171,'浙江省','慈溪市','1111',171,'2013-08-06 02:17:00.050676','2013-08-06 02:17:00.050676');
INSERT INTO "customerx_addresses" VALUES(172,'浙江省','慈溪市','1111',172,'2013-08-06 02:18:32.947854','2013-08-06 02:18:32.947854');
INSERT INTO "customerx_addresses" VALUES(173,'安徽省','慈溪市','1111',173,'2013-08-06 02:19:34.142883','2013-08-06 02:19:34.142883');
INSERT INTO "customerx_addresses" VALUES(174,'浙江省','慈溪市','1111',174,'2013-08-06 02:20:17.756753','2013-08-06 02:20:17.756753');
INSERT INTO "customerx_addresses" VALUES(175,'浙江省','慈溪市','1111',175,'2013-08-06 02:20:54.549497','2013-08-06 02:20:54.549497');
INSERT INTO "customerx_addresses" VALUES(176,'浙江省','慈溪市','1111',176,'2013-08-06 02:21:37.032460','2013-08-06 02:21:37.032460');
INSERT INTO "customerx_addresses" VALUES(177,'浙江省','慈溪市','1111',177,'2013-08-06 02:22:25.979351','2013-08-06 02:22:25.979351');
INSERT INTO "customerx_addresses" VALUES(178,'浙江省','慈溪市','1111',178,'2013-08-06 05:09:06.102050','2013-08-06 05:09:06.102050');
INSERT INTO "customerx_addresses" VALUES(179,'浙江省','慈溪市','1111',179,'2013-08-06 05:09:59.985941','2013-08-06 05:09:59.985941');
INSERT INTO "customerx_addresses" VALUES(180,'浙江省','慈溪市','1111',180,'2013-08-06 05:10:42.126554','2013-08-06 05:10:42.126554');
INSERT INTO "customerx_addresses" VALUES(181,'浙江省','慈溪市','1111',181,'2013-08-06 05:11:37.292149','2013-08-06 05:11:37.292149');
INSERT INTO "customerx_addresses" VALUES(182,'浙江省','慈溪市','1111',182,'2013-08-06 05:12:15.357007','2013-08-06 05:12:15.357007');
INSERT INTO "customerx_addresses" VALUES(183,'浙江省','慈溪市','1111',183,'2013-08-06 05:12:58.308144','2013-08-06 05:12:58.308144');
INSERT INTO "customerx_addresses" VALUES(184,'浙江省','慈溪市','1111',184,'2013-08-06 05:13:39.887842','2013-08-06 05:13:39.887842');
INSERT INTO "customerx_addresses" VALUES(185,'浙江省','慈溪市','1111',185,'2013-08-06 05:14:25.708411','2013-08-06 05:14:25.708411');
INSERT INTO "customerx_addresses" VALUES(186,'浙江省','慈溪市','1111',186,'2013-08-06 05:15:10.461205','2013-08-06 05:15:10.461205');
INSERT INTO "customerx_addresses" VALUES(187,'浙江省','慈溪市','1111',187,'2013-08-06 05:15:50.374381','2013-08-06 05:15:50.374381');
INSERT INTO "customerx_addresses" VALUES(188,'浙江省','慈溪市','1111',188,'2013-08-06 05:16:55.725258','2013-08-06 05:16:55.725258');
INSERT INTO "customerx_addresses" VALUES(189,'浙江省','慈溪市','1111',189,'2013-08-06 05:17:35.858715','2013-08-06 05:17:35.858715');
INSERT INTO "customerx_addresses" VALUES(190,'浙江省','慈溪市','1111',190,'2013-08-06 05:18:26.983960','2013-08-06 05:18:26.983960');
INSERT INTO "customerx_addresses" VALUES(191,'浙江省','慈溪市','1111',191,'2013-08-06 05:19:24.173846','2013-08-06 05:19:24.173846');
INSERT INTO "customerx_addresses" VALUES(192,'浙江省','慈溪市','1111',192,'2013-08-06 05:20:07.732724','2013-08-06 05:20:07.732724');
INSERT INTO "customerx_addresses" VALUES(193,'浙江省','慈溪市','1111',193,'2013-08-06 05:20:44.853718','2013-08-06 05:20:44.853718');
INSERT INTO "customerx_addresses" VALUES(194,'浙江省','慈溪市','1111',194,'2013-08-06 05:21:44.950352','2013-08-06 05:21:44.950352');
INSERT INTO "customerx_addresses" VALUES(195,'浙江省','宁波市北仑区','1111',195,'2013-08-06 07:26:11.765514','2013-08-06 07:26:11.765514');
INSERT INTO "customerx_addresses" VALUES(196,'浙江省','宁波市北仑区','1111',196,'2013-08-06 07:29:45.931151','2013-08-06 07:29:45.931151');
INSERT INTO "customerx_addresses" VALUES(197,'浙江省','宁波市北仑区','1111',197,'2013-08-06 07:31:30.570182','2013-08-06 07:31:30.570182');
INSERT INTO "customerx_addresses" VALUES(198,'浙江省','宁波市北仑区','1111',198,'2013-08-06 07:32:36.811596','2013-08-06 07:32:36.811596');
INSERT INTO "customerx_addresses" VALUES(199,'浙江省','宁波市北仑区','1111',199,'2013-08-06 07:34:13.403673','2013-08-06 07:34:13.403673');
INSERT INTO "customerx_addresses" VALUES(200,'浙江省','宁波市北仑区','1111',200,'2013-08-06 23:59:39.246730','2013-08-06 23:59:39.246730');
INSERT INTO "customerx_addresses" VALUES(201,'浙江省','宁波市北仑区','1111',201,'2013-08-07 00:01:38.559126','2013-08-07 00:01:38.559126');
INSERT INTO "customerx_addresses" VALUES(202,'浙江省','宁波市北仑区','1111',202,'2013-08-07 00:02:51.466618','2013-08-07 00:02:51.466618');
INSERT INTO "customerx_addresses" VALUES(203,'浙江省','宁波市北仑区','1111',203,'2013-08-07 00:03:48.623524','2013-08-07 00:03:48.623524');
INSERT INTO "customerx_addresses" VALUES(204,'浙江省','宁波市北仑区','1111',204,'2013-08-07 00:06:53.978623','2013-08-07 00:06:53.978623');
INSERT INTO "customerx_addresses" VALUES(205,'浙江省','宁波市北仑区','1111',205,'2013-08-07 00:08:07.764976','2013-08-07 00:08:07.764976');
INSERT INTO "customerx_addresses" VALUES(206,'浙江省','宁波市北仑区','1111',206,'2013-08-07 00:08:50.328924','2013-08-07 00:08:50.328924');
INSERT INTO "customerx_addresses" VALUES(207,'浙江省','宁波市北仑区','1111',207,'2013-08-07 00:09:47.843945','2013-08-07 00:09:47.843945');
INSERT INTO "customerx_addresses" VALUES(208,'浙江省','宁波市北仑区','1111',208,'2013-08-07 00:10:45.143762','2013-08-07 00:10:45.143762');
INSERT INTO "customerx_addresses" VALUES(209,'浙江省','宁波市北仑区','1111',209,'2013-08-07 00:11:26.710459','2013-08-07 00:11:26.710459');
INSERT INTO "customerx_addresses" VALUES(210,'浙江省','宁波市北仑区','1111',210,'2013-08-07 00:12:05.506718','2013-08-07 00:12:05.506718');
INSERT INTO "customerx_addresses" VALUES(211,'浙江省','宁波市北仑区','1111',211,'2013-08-07 00:13:11.572939','2013-08-07 00:13:11.572939');
INSERT INTO "customerx_addresses" VALUES(212,'浙江省','宁波市北仑区','1111',212,'2013-08-07 00:14:35.470667','2013-08-07 00:14:35.470667');
INSERT INTO "customerx_addresses" VALUES(213,'浙江省','宁波市北仑区','1111',213,'2013-08-07 00:15:17.153123','2013-08-07 00:15:17.153123');
INSERT INTO "customerx_addresses" VALUES(214,'浙江省','宁波市北仑区','1111',214,'2013-08-07 00:16:01.347810','2013-08-07 00:16:01.347810');
INSERT INTO "customerx_addresses" VALUES(215,'浙江省','宁波市北仑区','1111',215,'2013-08-07 00:17:00.730815','2013-08-07 00:17:00.730815');
INSERT INTO "customerx_addresses" VALUES(216,'浙江省','宁波市北仑区','1111',216,'2013-08-07 00:17:41.642910','2013-08-07 00:17:41.642910');
INSERT INTO "customerx_addresses" VALUES(217,'浙江省','宁波市北仑区','1111',217,'2013-08-07 00:19:38.051656','2013-08-07 00:19:38.051656');
INSERT INTO "customerx_addresses" VALUES(218,'浙江省','宁波市保税区','1111',218,'2013-08-07 00:20:36.335637','2013-08-07 00:20:36.335637');
INSERT INTO "customerx_addresses" VALUES(219,'浙江省','宁波市保税区','1111',219,'2013-08-07 00:21:20.152405','2013-08-07 00:21:20.152405');
INSERT INTO "customerx_addresses" VALUES(220,'浙江省','宁波市保税区','1111',220,'2013-08-07 00:22:04.586121','2013-08-07 00:22:04.586121');
INSERT INTO "customerx_addresses" VALUES(221,'浙江省','宁波市保税区','1111',221,'2013-08-07 00:22:53.938542','2013-08-07 00:22:53.938542');
INSERT INTO "customerx_addresses" VALUES(222,'浙江省','宁波市大榭','1111',222,'2013-08-07 00:23:42.452555','2013-08-07 00:23:42.452555');
INSERT INTO "customerx_addresses" VALUES(223,'浙江省','宁波市大榭','1111',223,'2013-08-07 00:24:36.324738','2013-08-07 00:24:36.324738');
INSERT INTO "customerx_addresses" VALUES(224,'浙江省','宁波市大榭','1111',224,'2013-08-07 00:25:12.715202','2013-08-07 00:25:12.715202');
INSERT INTO "customerx_addresses" VALUES(225,'浙江省','宁波市鄞州区','1111',225,'2013-08-07 00:39:16.855653','2013-08-07 00:39:16.855653');
INSERT INTO "customerx_addresses" VALUES(226,'浙江省','宁波市鄞州区','1111',226,'2013-08-07 00:42:09.820101','2013-08-07 00:42:09.820101');
INSERT INTO "customerx_addresses" VALUES(227,'浙江省','宁波市鄞州区','1111',227,'2013-08-07 00:43:05.821385','2013-08-07 00:43:05.821385');
INSERT INTO "customerx_addresses" VALUES(228,'浙江省','宁波市鄞州区','1111',228,'2013-08-07 00:43:57.593333','2013-08-07 00:43:57.593333');
INSERT INTO "customerx_addresses" VALUES(229,'浙江省','宁波市鄞州区','1111',229,'2013-08-07 00:44:47.843571','2013-08-07 00:44:47.843571');
INSERT INTO "customerx_addresses" VALUES(230,'浙江省','宁波市鄞州区','1111',230,'2013-08-07 00:47:53.060534','2013-08-07 00:47:53.060534');
INSERT INTO "customerx_addresses" VALUES(231,'浙江省','宁波市鄞州区','1111',231,'2013-08-07 00:48:50.545834','2013-08-07 00:48:50.545834');
INSERT INTO "customerx_addresses" VALUES(232,'浙江省','宁波市鄞州区','1111',232,'2013-08-07 00:49:29.926178','2013-08-07 00:49:29.926178');
INSERT INTO "customerx_addresses" VALUES(233,'浙江省','宁波市鄞州区','1111',233,'2013-08-07 00:50:05.111488','2013-08-07 00:50:05.111488');
INSERT INTO "customerx_addresses" VALUES(234,'浙江省','宁波市鄞州区','1111',234,'2013-08-07 00:50:45.397910','2013-08-07 00:50:45.397910');
INSERT INTO "customerx_addresses" VALUES(235,'浙江省','宁波市鄞州区','1111',235,'2013-08-07 00:51:32.260717','2013-08-07 00:51:32.260717');
INSERT INTO "customerx_addresses" VALUES(236,'浙江省','宁波市鄞州区','1111',236,'2013-08-07 00:52:24.534234','2013-08-07 00:52:24.534234');
INSERT INTO "customerx_addresses" VALUES(237,'浙江省','宁波市鄞州区','1111',237,'2013-08-07 00:53:42.307679','2013-08-07 00:53:42.307679');
INSERT INTO "customerx_addresses" VALUES(238,'浙江省','宁波市鄞州区','1111',238,'2013-08-07 01:27:20.389902','2013-08-07 01:27:20.389902');
INSERT INTO "customerx_addresses" VALUES(239,'浙江省','宁波市鄞州区','1111',239,'2013-08-07 01:28:32.427665','2013-08-07 01:28:32.427665');
INSERT INTO "customerx_addresses" VALUES(240,'浙江省','宁波市鄞州区','1111',240,'2013-08-07 01:29:29.527883','2013-08-07 01:29:29.527883');
INSERT INTO "customerx_addresses" VALUES(241,'浙江省','宁波市慈溪市','1111',241,'2013-08-07 01:57:14.387347','2013-08-07 01:57:14.387347');
INSERT INTO "customerx_addresses" VALUES(242,'浙江省','宁波市镇海区','1111',242,'2013-08-07 02:02:06.007180','2013-08-07 02:02:06.007180');
INSERT INTO "customerx_addresses" VALUES(243,'浙江省','宁波市镇海区','1111',243,'2013-08-07 02:03:56.575723','2013-08-07 02:03:56.575723');
INSERT INTO "customerx_addresses" VALUES(244,'浙江省','宁波市镇海区','1111',244,'2013-08-07 02:04:45.678677','2013-08-07 02:04:45.678677');
INSERT INTO "customerx_addresses" VALUES(245,'浙江省','宁波市镇海区','1111',245,'2013-08-07 02:05:31.564903','2013-08-07 02:05:31.564903');
INSERT INTO "customerx_addresses" VALUES(246,'浙江省','宁波市镇海区','1111',246,'2013-08-07 02:06:14.611797','2013-08-07 02:06:14.611797');
INSERT INTO "customerx_addresses" VALUES(247,'浙江省','宁波市镇海区','1111',247,'2013-08-07 02:07:03.852014','2013-08-07 02:07:03.852014');
INSERT INTO "customerx_addresses" VALUES(248,'浙江省','余姚市','1111',248,'2013-08-07 02:50:18.407373','2013-08-07 02:50:18.407373');
INSERT INTO "customerx_addresses" VALUES(249,'浙江省','余姚市','1111',249,'2013-08-07 02:51:08.832624','2013-08-07 02:51:08.832624');
INSERT INTO "customerx_addresses" VALUES(250,'浙江省','余姚市','1111',250,'2013-08-07 02:51:56.037108','2013-08-07 02:51:56.037108');
INSERT INTO "customerx_addresses" VALUES(251,'浙江省','余姚市','1111',251,'2013-08-07 02:52:54.854079','2013-08-07 02:52:54.854079');
INSERT INTO "customerx_addresses" VALUES(252,'浙江省','余姚市','1111',252,'2013-08-07 02:53:50.028599','2013-08-07 02:53:50.028599');
INSERT INTO "customerx_addresses" VALUES(253,'浙江省','余姚市','1111',253,'2013-08-07 02:54:27.983447','2013-08-07 02:54:27.983447');
INSERT INTO "customerx_addresses" VALUES(254,'浙江省','余姚市','1111',254,'2013-08-07 02:55:53.857507','2013-08-07 02:55:53.857507');
INSERT INTO "customerx_addresses" VALUES(255,'浙江省','余姚市','1111',255,'2013-08-07 02:57:46.003482','2013-08-07 02:57:46.003482');
INSERT INTO "customerx_addresses" VALUES(256,'浙江省','余姚市','1111',256,'2013-08-07 05:12:21.187281','2013-08-07 05:12:21.187281');
INSERT INTO "customerx_addresses" VALUES(257,'浙江省','余姚市','1111',257,'2013-08-07 05:13:18.585163','2013-08-07 05:13:18.585163');
INSERT INTO "customerx_addresses" VALUES(258,'浙江省','余姚市','1111',258,'2013-08-07 05:13:56.978270','2013-08-07 05:13:56.978270');
INSERT INTO "customerx_addresses" VALUES(259,'浙江省','余姚市','1111',259,'2013-08-07 05:14:41.035210','2013-08-07 05:14:41.035210');
INSERT INTO "customerx_addresses" VALUES(260,'浙江省','余姚市','1111',260,'2013-08-07 05:15:17.551687','2013-08-07 05:15:17.551687');
INSERT INTO "customerx_addresses" VALUES(261,'浙江省','余姚市','1111',261,'2013-08-07 05:16:05.536450','2013-08-07 05:16:05.536450');
INSERT INTO "customerx_addresses" VALUES(262,'浙江省','余姚市','1111',262,'2013-08-07 05:16:44.172181','2013-08-07 05:16:44.172181');
INSERT INTO "customerx_addresses" VALUES(263,'浙江省','余姚市','1111',263,'2013-08-07 05:17:21.887877','2013-08-07 05:17:21.887877');
INSERT INTO "customerx_addresses" VALUES(264,'浙江省','余姚市','1111',264,'2013-08-07 05:18:04.150373','2013-08-07 05:18:04.150373');
INSERT INTO "customerx_addresses" VALUES(265,'浙江省','余姚市','1111',265,'2013-08-07 05:18:45.195482','2013-08-07 05:18:45.195482');
INSERT INTO "customerx_addresses" VALUES(266,'浙江省','余姚市','1111',266,'2013-08-07 05:19:26.275153','2013-08-07 05:19:26.275153');
INSERT INTO "customerx_addresses" VALUES(267,'浙江省','余姚市','1111',267,'2013-08-07 05:20:08.468819','2013-08-07 05:20:08.468819');
INSERT INTO "customerx_addresses" VALUES(268,'浙江省','余姚市','1111',268,'2013-08-07 05:20:44.914783','2013-08-07 05:20:44.914783');
INSERT INTO "customerx_addresses" VALUES(269,'浙江省','余姚市','1111',269,'2013-08-07 05:21:23.387182','2013-08-07 05:21:23.387182');
INSERT INTO "customerx_addresses" VALUES(270,'浙江省','余姚市','1111',270,'2013-08-07 05:22:21.534164','2013-08-07 05:22:21.534164');
INSERT INTO "customerx_addresses" VALUES(271,'浙江省','余姚市','1111',271,'2013-08-07 05:22:57.895904','2013-08-07 05:22:57.895904');
INSERT INTO "customerx_addresses" VALUES(272,'浙江省','余姚市','1111',272,'2013-08-07 05:23:36.608032','2013-08-07 05:23:36.608032');
INSERT INTO "customerx_addresses" VALUES(273,'浙江省','余姚市','1111',273,'2013-08-07 05:24:16.181998','2013-08-07 05:24:16.181998');
INSERT INTO "customerx_addresses" VALUES(274,'浙江省','余姚市','1111',274,'2013-08-07 05:24:51.122232','2013-08-07 05:24:51.122232');
INSERT INTO "customerx_addresses" VALUES(275,'浙江省','宁波市江北区','1111',275,'2013-08-07 05:26:11.809637','2013-08-07 05:26:11.809637');
INSERT INTO "customerx_addresses" VALUES(276,'浙江省','宁波市江北区','1111',276,'2013-08-07 05:28:05.813120','2013-08-07 05:28:05.813120');
INSERT INTO "customerx_addresses" VALUES(277,'浙江省','宁波市江北区','1111',277,'2013-08-07 05:29:09.882692','2013-08-07 05:29:09.882692');
INSERT INTO "customerx_addresses" VALUES(278,'浙江省','宁波市江北区','1111',278,'2013-08-07 05:30:05.188901','2013-08-07 05:30:05.188901');
INSERT INTO "customerx_addresses" VALUES(279,'浙江省','宁波市江北区','1111',279,'2013-08-07 05:31:02.798740','2013-08-07 05:31:02.798740');
INSERT INTO "customerx_addresses" VALUES(280,'浙江省','宁波市江北区','1111',280,'2013-08-07 05:31:43.849485','2013-08-07 05:31:43.849485');
INSERT INTO "customerx_addresses" VALUES(281,'浙江省','宁波市江北区','1111',281,'2013-08-07 05:32:25.970007','2013-08-07 05:32:25.970007');
INSERT INTO "customerx_addresses" VALUES(282,'浙江省','宁波市象山县','1111',282,'2013-08-07 05:33:44.642039','2013-08-07 05:33:44.642039');
INSERT INTO "customerx_addresses" VALUES(283,'浙江省','宁波市象山县','1111',283,'2013-08-07 05:34:29.672798','2013-08-07 05:34:29.672798');
INSERT INTO "customerx_addresses" VALUES(284,'浙江省','宁波市象山县','1111',284,'2013-08-07 05:36:39.321350','2013-08-07 05:36:39.321350');
INSERT INTO "customerx_addresses" VALUES(285,'浙江省','宁波市象山县','1111',285,'2013-08-07 05:40:25.143449','2013-08-07 05:40:25.143449');
INSERT INTO "customerx_addresses" VALUES(286,'浙江省','宁波市象山县','1111',286,'2013-08-07 05:41:52.651918','2013-08-07 05:41:52.651918');
INSERT INTO "customerx_addresses" VALUES(287,'浙江省','宁波市象山县','1111',287,'2013-08-07 05:42:41.994839','2013-08-07 05:42:41.994839');
INSERT INTO "customerx_addresses" VALUES(288,'浙江省','宁波市象山县','1111',288,'2013-08-07 05:45:15.952003','2013-08-07 05:45:15.952003');
INSERT INTO "customerx_addresses" VALUES(289,'浙江省','宁波市象山县','1111',289,'2013-08-07 05:45:59.758259','2013-08-07 05:45:59.758259');
INSERT INTO "customerx_addresses" VALUES(290,'浙江省','宁波市象山县','1111',290,'2013-08-07 05:46:41.587633','2013-08-07 05:46:41.587633');
INSERT INTO "customerx_addresses" VALUES(291,'浙江省','宁波市象山县','1111',291,'2013-08-07 05:47:25.391984','2013-08-07 05:47:25.391984');
INSERT INTO "customerx_addresses" VALUES(292,'浙江省','宁波市象山县','1111',292,'2013-08-07 05:48:02.413059','2013-08-07 05:48:02.413059');
INSERT INTO "customerx_addresses" VALUES(293,'浙江省','宁波市象山县','1111',293,'2013-08-07 05:48:42.365017','2013-08-07 05:48:42.365017');
INSERT INTO "customerx_addresses" VALUES(294,'浙江省','宁波市象山县','1111',294,'2013-08-07 05:49:36.824595','2013-08-07 05:49:36.824595');
INSERT INTO "customerx_addresses" VALUES(295,'浙江省','宁波市象山县','1111',295,'2013-08-07 05:50:18.199042','2013-08-07 05:50:18.199042');
INSERT INTO "customerx_addresses" VALUES(296,'浙江省','宁波市象山县','1111',296,'2013-08-07 05:51:04.565069','2013-08-07 05:51:04.565069');
INSERT INTO "customerx_addresses" VALUES(297,'浙江省','宁波市象山县','1111',297,'2013-08-07 05:51:51.554011','2013-08-07 05:51:51.554011');
INSERT INTO "customerx_addresses" VALUES(298,'浙江省','宁波市象山县','1111',298,'2013-08-07 05:57:39.588322','2013-08-07 05:57:39.588322');
INSERT INTO "customerx_addresses" VALUES(299,'浙江省','宁波市象山县','1111',299,'2013-08-07 05:58:30.686153','2013-08-07 05:58:30.686153');
INSERT INTO "customerx_addresses" VALUES(300,'浙江省','宁波市象山县','1111',300,'2013-08-07 05:59:10.887562','2013-08-07 05:59:10.887562');
INSERT INTO "customerx_addresses" VALUES(301,'浙江省','宁波市象山县','1111',301,'2013-08-07 07:09:58.244598','2013-08-07 07:09:58.244598');
INSERT INTO "customerx_addresses" VALUES(302,'浙江省','宁波市象山县','1111',302,'2013-08-07 07:11:27.248273','2013-08-07 07:11:27.248273');
INSERT INTO "customerx_addresses" VALUES(303,'浙江省','宁波市象山县','1111',303,'2013-08-07 07:49:20.098494','2013-08-07 07:49:20.098494');
INSERT INTO "customerx_addresses" VALUES(304,'浙江省','宁波市象山县','1111',304,'2013-08-07 08:21:17.935718','2013-08-07 08:21:17.935718');
INSERT INTO "customerx_addresses" VALUES(305,'浙江省','宁波市象山县','1111',305,'2013-08-07 08:22:13.431359','2013-08-07 08:22:13.431359');
INSERT INTO "customerx_addresses" VALUES(306,'浙江省','宁波市宁海县','1111',306,'2013-08-07 08:23:20.057311','2013-08-07 08:23:20.057311');
INSERT INTO "customerx_addresses" VALUES(307,'浙江省','宁波市宁海县','1111',307,'2013-08-07 08:24:01.460555','2013-08-07 08:24:01.460555');
INSERT INTO "customerx_addresses" VALUES(308,'浙江省','宁波市宁海县','1111',308,'2013-08-07 08:24:42.364755','2013-08-07 08:24:42.364755');
INSERT INTO "customerx_addresses" VALUES(309,'浙江省','宁波市宁海县','1111',309,'2013-08-07 08:25:27.832645','2013-08-07 08:25:27.832645');
INSERT INTO "customerx_addresses" VALUES(310,'浙江省','宁波市宁海县','1111',310,'2013-08-07 08:26:17.340004','2013-08-07 08:26:17.340004');
INSERT INTO "customerx_addresses" VALUES(311,'浙江省','宁波市宁海县','1111',311,'2013-08-07 08:27:25.028271','2013-08-07 08:27:25.028271');
INSERT INTO "customerx_addresses" VALUES(312,'浙江省','宁波市宁海县','1111',312,'2013-08-07 08:31:24.740875','2013-08-07 08:31:24.740875');
INSERT INTO "customerx_addresses" VALUES(313,'浙江省','宁波市宁海县','1111',313,'2013-08-07 08:32:12.567876','2013-08-07 08:32:12.567876');
INSERT INTO "customerx_addresses" VALUES(314,'浙江省','宁波市高新区','1111',314,'2013-08-07 08:32:57.613734','2013-08-07 08:34:13.240177');
INSERT INTO "customerx_addresses" VALUES(315,'浙江省','奉化市','1111',315,'2013-08-07 08:33:47.648667','2013-08-07 08:33:47.648667');
INSERT INTO "customerx_addresses" VALUES(316,'浙江省','宁波市象山县','1111',316,'2013-08-07 08:35:51.756392','2013-08-07 08:35:51.756392');
INSERT INTO "customerx_addresses" VALUES(317,'浙江省','宁波市北仑区','1111',317,'2013-08-08 00:28:32.723811','2013-08-08 00:28:32.723811');
INSERT INTO "customerx_addresses" VALUES(318,'浙江省','宁波市北仑区','1111',318,'2013-08-08 00:30:03.119429','2013-08-08 00:30:03.119429');
INSERT INTO "customerx_addresses" VALUES(319,'浙江省','宁波市北仑区','1111',319,'2013-08-08 00:30:48.478374','2013-08-08 00:30:48.478374');
INSERT INTO "customerx_addresses" VALUES(320,'浙江省','宁波市北仑区','1111',320,'2013-08-08 00:32:07.739913','2013-08-08 00:32:07.739913');
INSERT INTO "customerx_addresses" VALUES(321,'浙江省','宁波市北仑区','1111',321,'2013-08-08 00:32:50.719857','2013-08-08 00:32:50.719857');
INSERT INTO "customerx_addresses" VALUES(322,'浙江省','宁波市北仑区','1111',322,'2013-08-08 00:33:37.438018','2013-08-08 00:33:37.438018');
INSERT INTO "customerx_addresses" VALUES(323,'浙江省','宁波市北仑区','1111',323,'2013-08-08 00:35:00.070964','2013-08-08 00:35:00.070964');
INSERT INTO "customerx_addresses" VALUES(324,'浙江省','宁波市北仑区','1111',324,'2013-08-08 00:35:34.698911','2013-08-08 00:35:34.698911');
INSERT INTO "customerx_addresses" VALUES(325,'浙江省','宁波市北仑区','1111',325,'2013-08-08 00:36:11.977389','2013-08-08 00:36:11.977389');
INSERT INTO "customerx_addresses" VALUES(326,'浙江省','宁波市北仑区','1111',326,'2013-08-08 00:37:18.503434','2013-08-08 00:37:18.503434');
INSERT INTO "customerx_addresses" VALUES(327,'浙江省','宁波市北仑区','1111',327,'2013-08-08 00:38:08.590343','2013-08-08 00:38:08.590343');
INSERT INTO "customerx_addresses" VALUES(328,'浙江省','宁波市北仑区','1111',328,'2013-08-08 00:38:44.425375','2013-08-08 00:38:44.425375');
INSERT INTO "customerx_addresses" VALUES(329,'浙江省','宁波市北仑区','1111',329,'2013-08-08 00:39:20.131587','2013-08-08 00:39:20.131587');
INSERT INTO "customerx_addresses" VALUES(330,'浙江省','宁波市北仑区','1111',330,'2013-08-08 00:58:44.172062','2013-08-08 00:58:44.172062');
INSERT INTO "customerx_addresses" VALUES(331,'浙江省','宁波市北仑区','1111',331,'2013-08-08 00:59:22.887590','2013-08-08 00:59:22.887590');
INSERT INTO "customerx_addresses" VALUES(332,'浙江省','宁波市北仑区','1111',332,'2013-08-08 01:00:02.715063','2013-08-08 01:00:02.715063');
INSERT INTO "customerx_addresses" VALUES(333,'浙江省','宁波市北仑区','1111',333,'2013-08-08 01:00:46.232211','2013-08-08 01:00:46.232211');
INSERT INTO "customerx_addresses" VALUES(334,'浙江省','宁波市北仑区','1111',334,'2013-08-08 01:01:25.219540','2013-08-08 01:01:25.219540');
INSERT INTO "customerx_addresses" VALUES(335,'浙江省','宁波市北仑区','1111',335,'2013-08-08 01:02:10.268721','2013-08-08 01:02:10.268721');
INSERT INTO "customerx_addresses" VALUES(336,'浙江省','宁波市北仑区','1111',336,'2013-08-08 01:07:24.482533','2013-08-08 01:07:24.482533');
INSERT INTO "customerx_addresses" VALUES(337,'浙江省','宁波市北仑区','1111',337,'2013-08-08 01:08:06.421655','2013-08-08 01:08:06.421655');
INSERT INTO "customerx_addresses" VALUES(338,'浙江省','宁波市北仑区','1111',338,'2013-08-08 01:08:48.899976','2013-08-08 01:08:48.899976');
INSERT INTO "customerx_addresses" VALUES(339,'浙江省','宁波市北仑区','1111',339,'2013-08-08 01:09:39.659391','2013-08-08 01:09:39.659391');
INSERT INTO "customerx_addresses" VALUES(340,'浙江省','宁波市北仑区','1111',340,'2013-08-08 01:10:46.019016','2013-08-08 01:10:46.019016');
INSERT INTO "customerx_addresses" VALUES(341,'浙江省','宁波市北仑区','1111',341,'2013-08-08 01:11:26.449285','2013-08-08 01:11:26.449285');
INSERT INTO "customerx_addresses" VALUES(342,'浙江省','宁波市北仑区','1111',342,'2013-08-08 01:12:03.757080','2013-08-08 01:12:03.757080');
INSERT INTO "customerx_addresses" VALUES(343,'浙江省','宁波市北仑区','1111',343,'2013-08-08 01:12:44.949340','2013-08-08 01:12:44.949340');
INSERT INTO "customerx_addresses" VALUES(344,'浙江省','宁波市北仑区','1111',344,'2013-08-08 01:13:26.478283','2013-08-08 01:13:26.478283');
INSERT INTO "customerx_addresses" VALUES(345,'浙江省','宁波市北仑区','1111',345,'2013-08-08 01:14:06.662695','2013-08-08 01:14:06.662695');
INSERT INTO "customerx_addresses" VALUES(346,'浙江省','宁波市北仑区','1111',346,'2013-08-08 01:14:57.572513','2013-08-08 01:14:57.572513');
INSERT INTO "customerx_addresses" VALUES(347,'浙江省','宁波市北仑区','1111',347,'2013-08-08 01:15:35.626460','2013-08-08 01:15:35.626460');
INSERT INTO "customerx_addresses" VALUES(348,'浙江省','宁波市北仑区','1111',348,'2013-08-08 01:16:13.344627','2013-08-08 01:16:13.344627');
INSERT INTO "customerx_addresses" VALUES(349,'浙江省','宁波市北仑区','1111',349,'2013-08-08 02:15:32.083200','2013-08-08 02:15:32.083200');
INSERT INTO "customerx_addresses" VALUES(350,'浙江省','宁波市北仑区','1111',350,'2013-08-08 02:16:42.741551','2013-08-08 02:16:42.741551');
INSERT INTO "customerx_addresses" VALUES(351,'浙江省','宁波市北仑区','1111',351,'2013-08-08 02:17:21.724457','2013-08-08 02:17:21.724457');
INSERT INTO "customerx_addresses" VALUES(352,'浙江省','宁波市北仑区','1111',352,'2013-08-08 02:18:18.700627','2013-08-08 02:18:18.700627');
INSERT INTO "customerx_addresses" VALUES(353,'浙江省','宁波市北仑区','1111',353,'2013-08-08 02:19:10.375382','2013-08-08 02:19:10.375382');
INSERT INTO "customerx_addresses" VALUES(354,'浙江省','宁波市北仑区','1111',354,'2013-08-08 02:19:47.559294','2013-08-08 02:19:47.559294');
INSERT INTO "customerx_addresses" VALUES(355,'浙江省','宁波市北仑区','1111',355,'2013-08-08 02:20:26.084586','2013-08-08 02:20:26.084586');
INSERT INTO "customerx_addresses" VALUES(356,'浙江省','宁波市北仑区','1111',356,'2013-08-08 02:21:06.693352','2013-08-08 02:21:06.693352');
INSERT INTO "customerx_addresses" VALUES(357,'浙江省','宁波市北仑区','1111',357,'2013-08-08 02:21:46.102608','2013-08-08 02:21:46.102608');
INSERT INTO "customerx_addresses" VALUES(358,'浙江省','宁波市北仑区','1111',358,'2013-08-08 02:22:28.092164','2013-08-08 02:22:28.092164');
INSERT INTO "customerx_addresses" VALUES(359,'浙江省','宁波市北仑区','1111',359,'2013-08-08 02:23:24.997903','2013-08-08 02:23:24.997903');
INSERT INTO "customerx_addresses" VALUES(360,'浙江省','宁波市保税区','1111',360,'2013-08-08 05:14:39.045399','2013-08-08 05:14:39.045399');
INSERT INTO "customerx_addresses" VALUES(361,'浙江省','宁波市保税区','1111',361,'2013-08-08 05:15:16.413873','2013-08-08 05:15:16.413873');
INSERT INTO "customerx_addresses" VALUES(362,'浙江省','宁波市保税区','1111',362,'2013-08-08 05:16:05.820498','2013-08-08 05:16:05.820498');
INSERT INTO "customerx_addresses" VALUES(363,'浙江省','宁波市保税区','1111',363,'2013-08-08 05:16:41.160906','2013-08-08 05:16:41.160906');
INSERT INTO "customerx_addresses" VALUES(364,'浙江省','宁波市大榭','1111',364,'2013-08-08 05:17:25.642725','2013-08-08 05:17:25.642725');
INSERT INTO "customerx_addresses" VALUES(365,'浙江省','宁波市大榭','1111',365,'2013-08-08 05:18:05.874598','2013-08-08 05:18:05.874598');
INSERT INTO "customerx_addresses" VALUES(366,'浙江省','宁波市鄞州区','1111',366,'2013-08-08 05:18:44.761249','2013-08-08 05:18:44.761249');
INSERT INTO "customerx_addresses" VALUES(367,'浙江省','宁波市鄞州区','1111',367,'2013-08-08 05:19:30.275345','2013-08-08 05:19:30.275345');
INSERT INTO "customerx_addresses" VALUES(368,'浙江省','宁波市鄞州区','1111',368,'2013-08-08 05:20:06.151057','2013-08-08 05:20:06.151057');
INSERT INTO "customerx_addresses" VALUES(369,'浙江省','宁波市鄞州区','1111',369,'2013-08-08 05:20:45.623041','2013-08-08 05:20:45.623041');
INSERT INTO "customerx_addresses" VALUES(370,'浙江省','宁波市鄞州区','1111',370,'2013-08-08 05:21:25.517578','2013-08-08 05:21:25.517578');
INSERT INTO "customerx_addresses" VALUES(371,'浙江省','宁波市鄞州区','1111',371,'2013-08-08 05:22:06.894808','2013-08-08 05:22:06.894808');
INSERT INTO "customerx_addresses" VALUES(372,'浙江省','宁波市鄞州区','1111',372,'2013-08-08 05:22:44.340639','2013-08-08 05:22:44.340639');
INSERT INTO "customerx_addresses" VALUES(373,'浙江省','宁波市鄞州区','1111',373,'2013-08-08 05:23:31.370097','2013-08-08 05:23:31.370097');
INSERT INTO "customerx_addresses" VALUES(374,'浙江省','宁波市鄞州区','1111',374,'2013-08-08 05:24:12.512971','2013-08-08 05:24:12.512971');
INSERT INTO "customerx_addresses" VALUES(375,'浙江省','宁波市鄞州区','1111',375,'2013-08-08 05:24:51.127338','2013-08-08 05:24:51.127338');
INSERT INTO "customerx_addresses" VALUES(376,'浙江省','宁波市鄞州区','1111',376,'2013-08-08 05:25:34.103220','2013-08-08 05:25:34.103220');
INSERT INTO "customerx_addresses" VALUES(377,'浙江省','宁波市鄞州区','1111',377,'2013-08-08 05:26:06.467789','2013-08-08 05:26:06.467789');
INSERT INTO "customerx_addresses" VALUES(378,'浙江省','宁波市鄞州区','1111',378,'2013-08-08 05:26:50.676413','2013-08-08 05:26:50.676413');
INSERT INTO "customerx_addresses" VALUES(379,'浙江省','宁波市鄞州区','1111',379,'2013-08-08 05:27:26.089457','2013-08-08 05:27:26.089457');
INSERT INTO "customerx_addresses" VALUES(380,'浙江省','宁波市鄞州区','1111',380,'2013-08-08 05:28:02.252977','2013-08-08 05:28:02.252977');
INSERT INTO "customerx_addresses" VALUES(381,'浙江省','宁波市鄞州区','1111',381,'2013-08-08 05:28:37.246362','2013-08-08 05:28:37.246362');
INSERT INTO "customerx_addresses" VALUES(382,'浙江省','宁波市鄞州区','1111',382,'2013-08-08 05:29:12.067322','2013-08-08 05:29:12.067322');
INSERT INTO "customerx_addresses" VALUES(383,'浙江省','宁波市鄞州区','1111',383,'2013-08-08 05:29:46.003806','2013-08-08 05:29:46.003806');
INSERT INTO "customerx_addresses" VALUES(384,'浙江省','宁波市鄞州区','1111',384,'2013-08-08 05:30:18.689905','2013-08-08 05:30:18.689905');
INSERT INTO "customerx_addresses" VALUES(385,'浙江省','宁波市鄞州区','1111',385,'2013-08-08 05:30:59.085923','2013-08-08 05:30:59.085923');
INSERT INTO "customerx_addresses" VALUES(386,'浙江省','宁波市鄞州区','1111',386,'2013-08-08 05:31:50.885235','2013-08-08 05:31:50.885235');
INSERT INTO "customerx_addresses" VALUES(387,'浙江省','宁波市鄞州区','1111',387,'2013-08-08 05:32:30.682587','2013-08-08 05:32:30.682587');
INSERT INTO "customerx_addresses" VALUES(388,'浙江省','宁波市鄞州区','1111',388,'2013-08-08 05:33:04.870912','2013-08-08 05:33:04.870912');
INSERT INTO "customerx_addresses" VALUES(389,'浙江省','宁波市鄞州区','1111',389,'2013-08-08 05:33:43.890327','2013-08-08 05:33:43.890327');
INSERT INTO "customerx_addresses" VALUES(390,'浙江省','宁波市鄞州区','1111',390,'2013-08-08 05:34:16.054865','2013-08-08 05:34:16.054865');
INSERT INTO "customerx_addresses" VALUES(391,'浙江省','宁波市鄞州区','1111',391,'2013-08-08 05:34:52.423153','2013-08-08 05:34:52.423153');
INSERT INTO "customerx_addresses" VALUES(392,'浙江省','宁波市鄞州区','1111',392,'2013-08-08 05:35:24.751142','2013-08-08 05:35:24.751142');
INSERT INTO "customerx_addresses" VALUES(393,'浙江省','宁波市鄞州区','1111',393,'2013-08-08 05:36:01.111545','2013-08-08 05:36:01.111545');
INSERT INTO "customerx_addresses" VALUES(394,'浙江省','宁波市鄞州区','1111',394,'2013-08-08 05:36:37.574235','2013-08-08 05:36:37.574235');
INSERT INTO "customerx_addresses" VALUES(395,'浙江省','宁波市鄞州区','1111',395,'2013-08-08 05:37:38.210647','2013-08-08 05:37:38.210647');
INSERT INTO "customerx_addresses" VALUES(396,'浙江省','宁波市鄞州区','1111',396,'2013-08-08 05:38:10.472863','2013-08-08 05:38:10.472863');
INSERT INTO "customerx_addresses" VALUES(397,'浙江省','宁波市鄞州区','1111',397,'2013-08-08 05:38:44.802172','2013-08-08 05:38:44.802172');
INSERT INTO "customerx_addresses" VALUES(398,'浙江省','宁波市鄞州区','1111',398,'2013-08-08 05:39:25.313748','2013-08-08 05:39:25.313748');
INSERT INTO "customerx_addresses" VALUES(399,'浙江省','宁波市鄞州区','1111',399,'2013-08-08 05:40:03.323357','2013-08-08 05:40:03.323357');
INSERT INTO "customerx_addresses" VALUES(400,'浙江省','宁波市鄞州区','1111',400,'2013-08-08 05:40:41.762026','2013-08-08 05:40:41.762026');
INSERT INTO "customerx_addresses" VALUES(401,'浙江省','宁波市鄞州区','1111',401,'2013-08-08 06:26:15.376831','2013-08-08 06:26:15.376831');
INSERT INTO "customerx_addresses" VALUES(402,'浙江省','宁波市鄞州区','1111',402,'2013-08-08 06:27:08.707472','2013-08-08 06:27:08.707472');
INSERT INTO "customerx_addresses" VALUES(403,'浙江省','宁波市鄞州区','1111',403,'2013-08-08 06:28:35.544515','2013-08-08 06:28:35.544515');
INSERT INTO "customerx_addresses" VALUES(404,'浙江省','宁波市鄞州区','1111',404,'2013-08-08 06:48:02.375001','2013-08-08 06:48:02.375001');
INSERT INTO "customerx_addresses" VALUES(405,'浙江省','宁波市鄞州区','1111',405,'2013-08-08 06:48:49.813082','2013-08-08 06:48:49.813082');
INSERT INTO "customerx_addresses" VALUES(406,'浙江省','宁波市鄞州区','1111',406,'2013-08-08 06:49:51.744689','2013-08-08 06:49:51.744689');
INSERT INTO "customerx_addresses" VALUES(407,'浙江省','宁波市鄞州区','1111',407,'2013-08-08 06:51:58.782813','2013-08-08 06:51:58.782813');
INSERT INTO "customerx_addresses" VALUES(408,'浙江省','宁波市鄞州区','1111',408,'2013-08-08 06:58:49.649253','2013-08-08 06:58:49.649253');
INSERT INTO "customerx_addresses" VALUES(409,'浙江省','宁波市鄞州区','1111',409,'2013-08-08 07:22:42.857839','2013-08-08 07:22:42.857839');
INSERT INTO "customerx_addresses" VALUES(410,'浙江省','宁波市鄞州区','1111',410,'2013-08-08 07:24:34.495606','2013-08-08 07:24:34.495606');
INSERT INTO "customerx_addresses" VALUES(411,'浙江省','宁波市鄞州区','1111',411,'2013-08-08 07:25:20.756137','2013-08-08 07:25:20.756137');
INSERT INTO "customerx_addresses" VALUES(412,'浙江省','宁波市鄞州区','1111',412,'2013-08-08 07:26:38.734700','2013-08-08 07:26:38.734700');
INSERT INTO "customerx_addresses" VALUES(413,'浙江省','宁波市鄞州区','1111',413,'2013-08-08 07:27:34.307849','2013-08-08 07:27:34.307849');
INSERT INTO "customerx_addresses" VALUES(414,'浙江省','宁波市鄞州区','1111',414,'2013-08-08 07:29:44.639703','2013-08-08 07:29:44.639703');
INSERT INTO "customerx_addresses" VALUES(415,'浙江省','宁波市鄞州区','1111',415,'2013-08-08 07:30:41.200970','2013-08-08 07:30:41.200970');
INSERT INTO "customerx_addresses" VALUES(416,'浙江省','宁波市鄞州区','1111',416,'2013-08-08 07:31:40.716437','2013-08-08 07:31:40.716437');
INSERT INTO "customerx_addresses" VALUES(417,'浙江省','宁波市鄞州区','1111',417,'2013-08-08 07:32:25.017544','2013-08-08 07:32:25.017544');
INSERT INTO "customerx_addresses" VALUES(418,'浙江省','宁波市鄞州区','1111',418,'2013-08-08 07:33:02.100112','2013-08-08 07:33:02.100112');
INSERT INTO "customerx_addresses" VALUES(419,'浙江省','宁波市鄞州区','1111',419,'2013-08-08 07:33:50.276542','2013-08-08 07:33:50.276542');
INSERT INTO "customerx_addresses" VALUES(420,'浙江省','宁波市鄞州区','1111',420,'2013-08-08 07:34:35.862691','2013-08-08 07:34:35.862691');
INSERT INTO "customerx_addresses" VALUES(421,'浙江省','宁波市鄞州区','1111',421,'2013-08-09 00:56:54.855025','2013-08-09 00:56:54.855025');
INSERT INTO "customerx_addresses" VALUES(422,'浙江省','宁波市鄞州区','1111',422,'2013-08-09 00:58:39.708916','2013-08-09 00:58:39.708916');
INSERT INTO "customerx_addresses" VALUES(423,'浙江省','宁波市鄞州区','1111',423,'2013-08-09 00:59:53.888799','2013-08-09 00:59:53.888799');
INSERT INTO "customerx_addresses" VALUES(424,'浙江省','宁波市鄞州区','1111',424,'2013-08-09 01:01:21.945058','2013-08-09 01:01:21.945058');
INSERT INTO "customerx_addresses" VALUES(425,'浙江省','宁波市鄞州区','1111',425,'2013-08-09 01:02:25.615783','2013-08-09 01:02:25.615783');
INSERT INTO "customerx_addresses" VALUES(426,'浙江省','宁波市鄞州区','1111',426,'2013-08-09 01:03:01.784088','2013-08-09 01:03:01.784088');
INSERT INTO "customerx_addresses" VALUES(427,'浙江省','宁波市鄞州区','1111',427,'2013-08-09 01:04:22.344631','2013-08-09 01:04:22.344631');
INSERT INTO "customerx_addresses" VALUES(428,'浙江省','宁波市鄞州区','1111',428,'2013-08-09 01:05:33.307289','2013-08-09 01:05:33.307289');
INSERT INTO "customerx_addresses" VALUES(429,'浙江省','宁波市鄞州区','1111',429,'2013-08-09 01:06:24.794443','2013-08-09 01:06:24.794443');
INSERT INTO "customerx_addresses" VALUES(430,'浙江省','宁波市鄞州区','1111',430,'2013-08-09 01:07:01.223507','2013-08-09 01:07:01.223507');
INSERT INTO "customerx_addresses" VALUES(431,'浙江省','宁波市鄞州区','1111',431,'2013-08-09 01:08:00.443169','2013-08-09 01:08:00.443169');
INSERT INTO "customerx_addresses" VALUES(432,'浙江省','宁波市鄞州区','1111',432,'2013-08-09 01:09:23.642080','2013-08-09 01:09:23.642080');
INSERT INTO "customerx_addresses" VALUES(433,'浙江省','宁波市鄞州区','1111',433,'2013-08-09 01:10:19.393805','2013-08-09 01:10:19.393805');
INSERT INTO "customerx_addresses" VALUES(434,'浙江省','宁波市鄞州区','1111',434,'2013-08-09 01:16:24.664677','2013-08-09 01:16:24.664677');
INSERT INTO "customerx_addresses" VALUES(435,'浙江省','宁波市鄞州区','1111',435,'2013-08-09 01:17:01.628069','2013-08-09 01:17:01.628069');
INSERT INTO "customerx_addresses" VALUES(436,'浙江省','宁波市江东区','1111',436,'2013-08-09 01:17:49.537214','2013-08-09 01:19:29.976985');
INSERT INTO "customerx_addresses" VALUES(437,'浙江省','宁波市江北区','1111',437,'2013-08-09 01:19:02.808706','2013-08-09 01:19:02.808706');
INSERT INTO "customerx_addresses" VALUES(438,'浙江省','宁波市科技园区','1111',438,'2013-08-09 01:20:25.961307','2013-08-09 01:20:25.961307');
INSERT INTO "customerx_addresses" VALUES(439,'浙江省','余姚市 ','1111',439,'2013-08-09 01:21:35.414912','2013-08-09 01:21:35.414912');
INSERT INTO "customerx_addresses" VALUES(440,'浙江省','余姚市','1111',440,'2013-08-09 01:22:43.218304','2013-08-09 01:22:43.218304');
INSERT INTO "customerx_addresses" VALUES(441,'浙江省','余姚市','1111',441,'2013-08-09 01:24:02.931606','2013-08-09 01:24:02.931606');
INSERT INTO "customerx_addresses" VALUES(442,'浙江省','余姚市','1111',442,'2013-08-09 01:25:18.847651','2013-08-09 01:25:18.847651');
INSERT INTO "customerx_addresses" VALUES(443,'浙江省','余姚市','1111',443,'2013-08-09 01:30:47.160436','2013-08-09 01:30:47.160436');
INSERT INTO "customerx_addresses" VALUES(444,'浙江省','余姚市','1111',444,'2013-08-09 01:31:57.182363','2013-08-09 01:31:57.182363');
INSERT INTO "customerx_addresses" VALUES(445,'浙江省','余姚市','1111',445,'2013-08-09 01:32:47.044812','2013-08-09 01:32:47.044812');
INSERT INTO "customerx_addresses" VALUES(446,'浙江省','余姚市','1111',446,'2013-08-09 01:33:26.438378','2013-08-09 01:33:26.438378');
INSERT INTO "customerx_addresses" VALUES(447,'浙江省','余姚市','1111',447,'2013-08-09 01:56:48.171493','2013-08-09 01:56:48.171493');
INSERT INTO "customerx_addresses" VALUES(448,'浙江省','余姚市','1111',448,'2013-08-09 01:58:02.791858','2013-08-09 01:58:02.791858');
INSERT INTO "customerx_addresses" VALUES(449,'浙江省','余姚市','1111',449,'2013-08-09 01:58:44.384263','2013-08-09 01:58:44.384263');
INSERT INTO "customerx_addresses" VALUES(450,'浙江省','余姚市','1111',450,'2013-08-09 01:59:27.351267','2013-08-09 01:59:27.351267');
INSERT INTO "customerx_addresses" VALUES(451,'浙江省','余姚市','1111',451,'2013-08-09 02:00:48.961909','2013-08-09 02:00:48.961909');
INSERT INTO "customerx_addresses" VALUES(452,'浙江省','余姚市','1111',452,'2013-08-09 02:01:26.543450','2013-08-09 02:01:26.543450');
INSERT INTO "customerx_addresses" VALUES(453,'浙江省','余姚市','1111',453,'2013-08-09 02:03:14.654672','2013-08-09 02:03:14.654672');
INSERT INTO "customerx_addresses" VALUES(454,'浙江省','余姚市','1111',454,'2013-08-09 02:03:56.686180','2013-08-09 02:03:56.686180');
INSERT INTO "customerx_addresses" VALUES(455,'浙江省','余姚市','1111',455,'2013-08-09 02:04:41.593975','2013-08-09 02:04:41.593975');
INSERT INTO "customerx_addresses" VALUES(456,'浙江省','余姚市','1111',456,'2013-08-09 02:05:49.236502','2013-08-09 02:05:49.236502');
INSERT INTO "customerx_addresses" VALUES(457,'浙江省','余姚市','1111',457,'2013-08-09 02:08:18.841295','2013-08-09 02:08:18.841295');
INSERT INTO "customerx_addresses" VALUES(458,'浙江省','余姚市','1111',458,'2013-08-09 02:08:46.649816','2013-08-09 02:08:46.649816');
INSERT INTO "customerx_addresses" VALUES(459,'浙江省','余姚市','1111',459,'2013-08-09 02:09:12.778178','2013-08-09 02:09:12.778178');
INSERT INTO "customerx_addresses" VALUES(460,'浙江省','余姚市','1111',460,'2013-08-09 02:09:56.434578','2013-08-09 02:09:56.434578');
INSERT INTO "customerx_addresses" VALUES(461,'浙江省','余姚市','1111',461,'2013-08-09 02:11:08.582772','2013-08-09 02:11:08.582772');
INSERT INTO "customerx_addresses" VALUES(462,'浙江省','余姚市','1111',462,'2013-08-09 02:13:28.465546','2013-08-09 02:13:28.465546');
INSERT INTO "customerx_addresses" VALUES(463,'浙江省','余姚市','1111',463,'2013-08-09 02:16:11.692123','2013-08-09 02:16:11.692123');
INSERT INTO "customerx_addresses" VALUES(464,'浙江省','慈溪市','1111',464,'2013-08-09 02:18:05.252177','2013-08-09 02:18:05.252177');
INSERT INTO "customerx_addresses" VALUES(465,'浙江省','慈溪市','1111',465,'2013-08-09 02:18:50.451188','2013-08-09 02:18:50.451188');
INSERT INTO "customerx_addresses" VALUES(466,'浙江省','慈溪市','1111',466,'2013-08-09 02:19:35.784382','2013-08-09 02:19:35.784382');
INSERT INTO "customerx_addresses" VALUES(467,'浙江省','宁波市镇海区','1111',467,'2013-08-09 02:20:21.719238','2013-08-09 02:22:10.293979');
INSERT INTO "customerx_addresses" VALUES(468,'浙江省','宁波市镇海区','1111',468,'2013-08-09 02:21:57.836992','2013-08-09 02:21:57.836992');
INSERT INTO "customerx_addresses" VALUES(469,'浙江省','宁波市镇海区','1111',469,'2013-08-09 02:22:59.140972','2013-08-09 02:22:59.140972');
INSERT INTO "customerx_addresses" VALUES(470,'浙江省','宁波市镇海区','1111',470,'2013-08-09 02:24:12.838093','2013-08-09 02:24:12.838093');
INSERT INTO "customerx_addresses" VALUES(471,'浙江省','宁波市镇海区','1111',471,'2013-08-09 02:25:41.487240','2013-08-09 02:25:41.487240');
INSERT INTO "customerx_addresses" VALUES(472,'浙江省','奉化市','1111',472,'2013-08-09 02:41:21.945476','2013-08-09 02:45:13.120814');
INSERT INTO "customerx_addresses" VALUES(473,'浙江省','奉化市','1111',473,'2013-08-09 02:45:00.046781','2013-08-09 02:45:00.046781');
INSERT INTO "customerx_addresses" VALUES(474,'浙江省','奉化市','1111',474,'2013-08-09 05:18:40.411591','2013-08-09 05:18:40.411591');
INSERT INTO "customerx_addresses" VALUES(475,'浙江省','奉化市','1111',475,'2013-08-09 05:19:24.680125','2013-08-09 05:19:24.680125');
INSERT INTO "customerx_addresses" VALUES(476,'浙江省','奉化市','1111',476,'2013-08-09 05:20:06.061239','2013-08-09 05:20:06.061239');
INSERT INTO "customerx_addresses" VALUES(477,'浙江省','奉化市','1111',477,'2013-08-09 05:20:52.707218','2013-08-09 05:20:52.707218');
INSERT INTO "customerx_addresses" VALUES(478,'浙江省','奉化市','1111',478,'2013-08-09 05:21:31.237558','2013-08-09 05:21:31.237558');
INSERT INTO "customerx_addresses" VALUES(479,'浙江省','奉化市','1111',479,'2013-08-09 05:22:09.395417','2013-08-09 05:22:09.395417');
INSERT INTO "customerx_addresses" VALUES(480,'浙江省','宁波市象山县','1111',480,'2013-08-09 05:22:49.921047','2013-08-09 05:22:49.921047');
INSERT INTO "customerx_addresses" VALUES(481,'浙江省','宁波市象山县','1111',481,'2013-08-09 05:23:25.606258','2013-08-09 05:23:25.606258');
INSERT INTO "customerx_addresses" VALUES(482,'浙江省','宁波市象山县','1111',482,'2013-08-09 05:23:59.543353','2013-08-09 05:23:59.543353');
INSERT INTO "customerx_addresses" VALUES(483,'浙江省','宁波市象山县','1111',483,'2013-08-09 05:24:44.498689','2013-08-09 05:24:44.498689');
INSERT INTO "customerx_addresses" VALUES(484,'浙江省','宁波市象山县','1111',484,'2013-08-09 05:25:33.215960','2013-08-09 05:25:33.215960');
INSERT INTO "customerx_addresses" VALUES(485,'浙江省','宁波市象山县','1111',485,'2013-08-09 05:27:18.180872','2013-08-09 05:27:18.180872');
INSERT INTO "customerx_addresses" VALUES(486,'浙江省','宁波市象山县','1111',486,'2013-08-09 05:27:57.869695','2013-08-09 05:27:57.869695');
INSERT INTO "customerx_addresses" VALUES(487,'浙江省','宁波市象山县','1111',487,'2013-08-09 05:28:40.545900','2013-08-09 05:28:40.545900');
INSERT INTO "customerx_addresses" VALUES(488,'浙江省','宁波市宁海县','1111',488,'2013-08-09 05:35:38.205846','2013-08-09 05:35:38.205846');
INSERT INTO "customerx_addresses" VALUES(489,'浙江省','宁波市宁海县','1111',489,'2013-08-09 05:39:44.535618','2013-08-09 05:39:44.535618');
INSERT INTO "customerx_addresses" VALUES(490,'浙江省','宁波市宁海县','1111',490,'2013-08-09 05:40:36.174010','2013-08-09 05:40:36.174010');
INSERT INTO "customerx_addresses" VALUES(491,'浙江省','宁波市宁海县','1111',491,'2013-08-09 05:41:32.293253','2013-08-09 05:41:32.293253');
INSERT INTO "customerx_addresses" VALUES(492,'浙江省','宁波市宁海县','1111',492,'2013-08-09 05:43:01.004278','2013-08-09 05:43:01.004278');
INSERT INTO "customerx_addresses" VALUES(493,'浙江省','宁波市宁海县','1111',493,'2013-08-09 05:44:24.063924','2013-08-09 05:44:24.063924');
INSERT INTO "customerx_addresses" VALUES(494,'浙江省','宁波市宁海县','1111',494,'2013-08-09 05:45:41.168614','2013-08-09 05:45:41.168614');
INSERT INTO "customerx_addresses" VALUES(495,'浙江省','宁波市宁海县','1111',495,'2013-08-09 05:46:20.531512','2013-08-09 05:46:20.531512');
INSERT INTO "customerx_addresses" VALUES(496,'浙江省','宁波市宁海县','1111',496,'2013-08-09 05:48:27.239049','2013-08-09 05:48:27.239049');
INSERT INTO "customerx_addresses" VALUES(497,'浙江省','宁波市宁海县','1111',497,'2013-08-09 05:59:32.768357','2013-08-09 05:59:32.768357');
INSERT INTO "customerx_addresses" VALUES(498,'浙江省','宁波市宁海县','1111',498,'2013-08-09 06:00:31.584740','2013-08-09 06:00:31.584740');
INSERT INTO "customerx_addresses" VALUES(499,'浙江省','宁波市宁海县','1111',499,'2013-08-09 06:02:35.286285','2013-08-09 06:02:35.286285');
INSERT INTO "customerx_addresses" VALUES(500,'浙江省','宁波市宁海县','1111',500,'2013-08-09 06:05:15.398235','2013-08-09 06:05:15.398235');
INSERT INTO "customerx_addresses" VALUES(501,'浙江省','宁波市宁海县','111',501,'2013-08-09 06:10:33.231880','2013-08-09 06:10:33.231880');
INSERT INTO "customerx_addresses" VALUES(502,'浙江省','宁波市宁海县','1111',502,'2013-08-09 06:13:07.106138','2013-08-09 06:13:07.106138');
INSERT INTO "customerx_addresses" VALUES(503,'浙江省','宁波市宁海县','1111',503,'2013-08-09 06:16:23.675926','2013-08-09 06:16:23.675926');
INSERT INTO "customerx_addresses" VALUES(504,'浙江省','宁波市宁海县','1111',504,'2013-08-09 06:19:42.099160','2013-08-09 06:19:42.099160');
INSERT INTO "customerx_addresses" VALUES(505,'浙江省','宁波市宁海县','1111',505,'2013-08-09 06:21:22.900565','2013-08-09 06:21:22.900565');
INSERT INTO "customerx_addresses" VALUES(506,'浙江省','宁波市宁海县','1111',506,'2013-08-09 06:23:22.386175','2013-08-09 06:23:22.386175');
INSERT INTO "customerx_addresses" VALUES(507,'浙江省','宁波市宁海县','1111',507,'2013-08-09 06:25:26.073819','2013-08-09 06:25:26.073819');
INSERT INTO "customerx_addresses" VALUES(508,'浙江省','宁波市宁海县','1111',508,'2013-08-09 06:27:08.301969','2013-08-09 06:27:08.301969');
INSERT INTO "customerx_addresses" VALUES(509,'浙江省','宁波市宁海县','1111',509,'2013-08-09 06:27:49.655722','2013-08-09 06:27:49.655722');
INSERT INTO "customerx_addresses" VALUES(510,'浙江省','宁波市宁海县','1111',510,'2013-08-09 06:28:45.654601','2013-08-09 06:28:45.654601');
INSERT INTO "customerx_addresses" VALUES(511,'浙江省','宁波市宁海县','1111',511,'2013-08-09 06:29:46.944086','2013-08-09 06:29:46.944086');
INSERT INTO "customerx_addresses" VALUES(512,'浙江省','宁波市宁海县','1111',512,'2013-08-09 06:31:00.988146','2013-08-09 06:31:00.988146');
INSERT INTO "customerx_addresses" VALUES(513,'浙江省','宁波市宁海县','1111',513,'2013-08-09 06:32:20.253943','2013-08-09 06:32:20.253943');
INSERT INTO "customerx_addresses" VALUES(514,'浙江省','宁波市宁海县','1111',514,'2013-08-09 06:33:18.891624','2013-08-09 06:33:18.891624');
INSERT INTO "customerx_addresses" VALUES(515,'浙江省','宁波市宁海县','1111',515,'2013-08-09 06:34:13.376641','2013-08-09 06:34:13.376641');
INSERT INTO "customerx_addresses" VALUES(516,'浙江省','宁波市北仑区','1111',516,'2013-08-12 00:45:45.364327','2013-08-12 00:45:45.364327');
INSERT INTO "customerx_addresses" VALUES(517,'浙江省','宁波市北仑区','1111',517,'2013-08-12 00:49:22.676595','2013-08-12 00:49:22.676595');
INSERT INTO "customerx_addresses" VALUES(518,'浙江省','宁波市江北区','1111',518,'2013-08-12 00:55:15.041797','2013-08-12 00:55:15.041797');
INSERT INTO "customerx_addresses" VALUES(519,'浙江省','慈溪市','1111',519,'2013-08-12 00:55:52.855281','2013-08-12 00:55:52.855281');
INSERT INTO "customerx_addresses" VALUES(520,'浙江省','宁波市鄞州区','1111',520,'2013-08-12 00:57:04.455460','2013-08-12 00:57:04.455460');
INSERT INTO "customerx_addresses" VALUES(521,'浙江省','慈溪市','1111',521,'2013-08-12 00:57:50.026537','2013-08-12 00:57:50.026537');
INSERT INTO "customerx_addresses" VALUES(522,'浙江省','慈溪市','1111',522,'2013-08-12 00:59:41.163565','2013-08-12 00:59:41.163565');
INSERT INTO "customerx_addresses" VALUES(523,'浙江省','宁波市鄞州区','1111',523,'2013-08-12 01:00:26.531562','2013-08-12 01:00:26.531562');
INSERT INTO "customerx_addresses" VALUES(524,'浙江省','奉化市','1111',524,'2013-08-12 01:02:06.874178','2013-08-12 01:02:06.874178');
INSERT INTO "customerx_addresses" VALUES(525,'浙江省','宁波市北仑区','1111',525,'2013-08-12 01:03:27.805596','2013-08-12 01:03:27.805596');
INSERT INTO "customerx_addresses" VALUES(526,'浙江省','宁波市北仑区','1111',526,'2013-08-12 01:04:23.465709','2013-08-12 01:04:23.465709');
INSERT INTO "customerx_addresses" VALUES(527,'浙江省','宁波市北仑区','1111',527,'2013-08-12 01:05:11.920628','2013-08-12 01:05:11.920628');
INSERT INTO "customerx_addresses" VALUES(528,'浙江省','宁波市北仑区','1111',528,'2013-08-12 01:06:59.275662','2013-08-12 01:06:59.275662');
INSERT INTO "customerx_addresses" VALUES(529,'浙江省','宁波市鄞州区','1111',529,'2013-08-12 01:08:49.573346','2013-08-12 01:08:49.573346');
INSERT INTO "customerx_addresses" VALUES(530,'浙江省','宁波市鄞州区','1111',530,'2013-08-12 01:17:26.076049','2013-08-12 01:17:26.076049');
INSERT INTO "customerx_addresses" VALUES(531,'浙江省','宁波市北仑区','1111',531,'2013-08-12 01:18:37.893854','2013-08-12 01:18:37.893854');
INSERT INTO "customerx_addresses" VALUES(532,'浙江省','宁波市鄞州区','1111',532,'2013-08-12 05:39:18.295155','2013-08-12 05:39:18.295155');
INSERT INTO "customerx_addresses" VALUES(533,'浙江省','宁波市鄞州区','1111',533,'2013-08-12 05:40:22.024666','2013-08-12 05:40:22.024666');
INSERT INTO "customerx_addresses" VALUES(534,'浙江省','宁波市北仑区','1111',534,'2013-08-12 05:41:33.713384','2013-08-12 05:41:33.713384');
INSERT INTO "customerx_addresses" VALUES(535,'浙江省','宁波市鄞州区','1111',535,'2013-08-12 05:42:50.034807','2013-08-12 05:42:50.034807');
INSERT INTO "customerx_addresses" VALUES(536,'浙江省','宁波市鄞州区','1111',536,'2013-08-12 05:43:55.496391','2013-08-12 05:43:55.496391');
INSERT INTO "customerx_addresses" VALUES(537,'浙江省','宁波市鄞州区','1111',537,'2013-08-12 05:46:26.148363','2013-08-12 05:46:26.148363');
INSERT INTO "customerx_addresses" VALUES(538,'浙江省','宁波市鄞州区','1111',538,'2013-08-12 05:48:00.888085','2013-08-12 05:48:00.888085');
INSERT INTO "customerx_addresses" VALUES(539,'浙江省','奉化市','1111',539,'2013-08-12 05:49:34.360740','2013-08-12 05:49:34.360740');
INSERT INTO "customerx_addresses" VALUES(540,'浙江省','宁波市北仑区','1111',540,'2013-08-12 05:50:40.906469','2013-08-12 05:50:40.906469');
INSERT INTO "customerx_addresses" VALUES(541,'浙江省','奉化市','1111',541,'2013-08-12 05:56:07.169458','2013-08-12 05:56:07.169458');
INSERT INTO "customerx_addresses" VALUES(542,'浙江省','宁波市鄞州区','1111',542,'2013-08-12 05:57:19.532246','2013-08-12 05:57:19.532246');
INSERT INTO "customerx_addresses" VALUES(543,'浙江省','宁波市鄞州区','1111',543,'2013-08-12 05:58:38.637167','2013-08-12 05:58:38.637167');
INSERT INTO "customerx_addresses" VALUES(544,'浙江省','宁波市宁海县','1111',544,'2013-08-12 06:03:06.676132','2013-08-12 06:03:06.676132');
INSERT INTO "customerx_addresses" VALUES(545,'浙江省','宁波市鄞州区','1111',545,'2013-08-12 06:03:47.838156','2013-08-12 06:03:47.838156');
INSERT INTO "customerx_addresses" VALUES(546,'浙江省','宁波市宁海县','1111',546,'2013-08-12 06:04:34.815081','2013-08-12 06:04:34.815081');
INSERT INTO "customerx_addresses" VALUES(547,'浙江省','宁波市鄞州区','1111',547,'2013-08-12 06:05:42.386199','2013-08-12 06:05:42.386199');
INSERT INTO "customerx_addresses" VALUES(548,'浙江省','余姚市','1111',548,'2013-08-12 06:06:52.257066','2013-08-12 06:06:52.257066');
INSERT INTO "customerx_addresses" VALUES(549,'浙江省','奉化市','1111',549,'2013-08-12 06:09:27.576876','2013-08-12 06:09:27.576876');
INSERT INTO "customerx_addresses" VALUES(550,'浙江省','宁波市北仑区','1111',550,'2013-08-12 06:11:41.500289','2013-08-12 06:11:41.500289');
INSERT INTO "customerx_addresses" VALUES(551,'浙江省','宁波市江北区','1111',551,'2013-08-12 06:14:02.591207','2013-08-12 06:14:02.591207');
INSERT INTO "customerx_addresses" VALUES(552,'浙江省','宁波市鄞州区','1111',552,'2013-08-12 06:15:30.891069','2013-08-12 06:15:30.891069');
INSERT INTO "customerx_addresses" VALUES(553,'浙江省','宁波市鄞州区','1111',553,'2013-08-12 06:17:37.146483','2013-08-12 06:17:37.146483');
INSERT INTO "customerx_addresses" VALUES(554,'浙江省','宁波杭州湾新区','1111',554,'2013-08-12 06:27:02.466837','2013-08-12 06:27:02.466837');
INSERT INTO "customerx_addresses" VALUES(555,'浙江省','宁波市宁海县','1111',555,'2013-08-12 06:28:04.632630','2013-08-12 06:28:04.632630');
INSERT INTO "customerx_addresses" VALUES(556,'浙江省','宁波市镇海区','1111',556,'2013-08-12 06:29:48.854169','2013-08-12 06:29:48.854169');
INSERT INTO "customerx_addresses" VALUES(557,'浙江省','宁波市宁海县','1111',557,'2013-08-12 06:30:33.943409','2013-08-12 06:30:33.943409');
INSERT INTO "customerx_addresses" VALUES(558,'浙江省','宁波市北仑区','1111',558,'2013-08-12 06:31:40.975883','2013-08-12 06:31:40.975883');
INSERT INTO "customerx_addresses" VALUES(559,'浙江省','宁波市江东区','1111',559,'2013-08-12 06:32:29.783617','2013-08-12 06:32:29.783617');
INSERT INTO "customerx_addresses" VALUES(560,'浙江省','宁波市鄞州区','1111',560,'2013-08-12 06:33:22.011145','2013-08-12 06:33:22.011145');
INSERT INTO "customerx_addresses" VALUES(561,'浙江省','宁波市鄞州区','1111',561,'2013-08-12 06:35:01.067169','2013-08-12 06:35:01.067169');
INSERT INTO "customerx_addresses" VALUES(562,'浙江省','宁波市北仑区','1111',562,'2013-08-12 06:36:17.753457','2013-08-12 06:36:17.753457');
INSERT INTO "customerx_addresses" VALUES(563,'浙江省','宁波市鄞州区','1111',563,'2013-08-12 06:37:11.020108','2013-08-12 06:37:11.020108');
INSERT INTO "customerx_addresses" VALUES(564,'浙江省','余姚市','1111',564,'2013-08-12 06:38:21.785201','2013-08-12 06:38:21.785201');
INSERT INTO "customerx_addresses" VALUES(565,'浙江省','宁波市滨海新区','1111',565,'2013-08-12 06:39:44.875591','2013-08-12 06:39:44.875591');
INSERT INTO "customerx_addresses" VALUES(566,'浙江省','宁波市鄞州区','1111',566,'2013-08-12 06:40:41.478153','2013-08-12 06:40:41.478153');
INSERT INTO "customerx_addresses" VALUES(567,'浙江省','宁波市北仑区','1111',567,'2013-08-12 06:42:42.610582','2013-08-12 06:42:42.610582');
INSERT INTO "customerx_addresses" VALUES(568,'浙江省','宁波市鄞州区','1111',568,'2013-08-12 06:43:55.753129','2013-08-12 06:43:55.753129');
INSERT INTO "customerx_addresses" VALUES(569,'浙江省','宁波市北仑区','1111',569,'2013-08-12 06:46:15.460953','2013-08-12 06:46:15.460953');
INSERT INTO "customerx_addresses" VALUES(570,'浙江省','宁波市鄞州区','1111',570,'2013-08-12 06:47:02.247536','2013-08-12 06:47:02.247536');
INSERT INTO "customerx_addresses" VALUES(571,'浙江省','奉化市','1111',571,'2013-08-12 06:48:23.085371','2013-08-12 06:48:23.085371');
INSERT INTO "customerx_addresses" VALUES(572,'浙江省','宁波市鄞州区','1111',572,'2013-08-12 06:49:51.996927','2013-08-12 06:49:51.996927');
INSERT INTO "customerx_addresses" VALUES(573,'浙江省','宁波市高新区','1111',573,'2013-08-12 06:50:38.458981','2013-08-12 06:50:38.458981');
INSERT INTO "customerx_addresses" VALUES(574,'浙江省','宁波市鄞州区','1111',574,'2013-08-12 06:51:30.708868','2013-08-12 06:51:30.708868');
INSERT INTO "customerx_addresses" VALUES(575,'浙江省','奉化市','1111',575,'2013-08-12 06:52:20.854164','2013-08-12 06:52:20.854164');
INSERT INTO "customerx_addresses" VALUES(576,'浙江省','奉化市','1111',576,'2013-08-12 06:53:02.474781','2013-08-12 06:53:02.474781');
INSERT INTO "customerx_addresses" VALUES(577,'浙江省','余姚市','1111',577,'2013-08-12 06:54:20.412303','2013-08-12 06:54:20.412303');
INSERT INTO "customerx_addresses" VALUES(578,'浙江省','宁波市宁海县','1111',578,'2013-08-12 06:55:21.356684','2013-08-12 06:55:21.356684');
INSERT INTO "customerx_addresses" VALUES(579,'浙江省','宁波市鄞州区','1111',579,'2013-08-12 06:56:04.282633','2013-08-12 06:56:04.282633');
INSERT INTO "customerx_addresses" VALUES(580,'浙江省','奉化市','1111',580,'2013-08-12 06:57:23.575002','2013-08-12 06:57:23.575002');
INSERT INTO "customerx_addresses" VALUES(581,'浙江省','宁波市北仑区','1111',581,'2013-08-12 06:58:27.165318','2013-08-12 06:58:27.165318');
INSERT INTO "customerx_addresses" VALUES(582,'浙江省','宁波市鄞州区','1111',582,'2013-08-12 06:59:14.330001','2013-08-12 06:59:14.330001');
INSERT INTO "customerx_addresses" VALUES(583,'浙江省','宁波市鄞州区','1111',583,'2013-08-12 07:00:05.660739','2013-08-12 07:00:05.660739');
INSERT INTO "customerx_addresses" VALUES(584,'浙江省','宁波市宁海县','1111',584,'2013-08-12 07:01:00.142165','2013-08-12 07:01:00.142165');
INSERT INTO "customerx_addresses" VALUES(585,'浙江省','奉化市','1111',585,'2013-08-12 07:01:38.672977','2013-08-12 07:01:38.672977');
INSERT INTO "customerx_addresses" VALUES(586,'浙江省','宁波市宁海县','1111',586,'2013-08-12 07:02:36.617869','2013-08-12 07:02:36.617869');
INSERT INTO "customerx_addresses" VALUES(587,'浙江省','宁波市鄞州区','1111',587,'2013-08-12 07:04:10.761301','2013-08-12 07:04:10.761301');
INSERT INTO "customerx_addresses" VALUES(588,'浙江省','宁波市北仑区','1111',588,'2013-08-12 07:05:03.620038','2013-08-12 07:05:03.620038');
INSERT INTO "customerx_addresses" VALUES(589,'浙江省','宁波市北仑区','1111',589,'2013-08-12 07:06:17.009722','2013-08-12 07:06:17.009722');
INSERT INTO "customerx_addresses" VALUES(590,'浙江省','宁波市鄞州区','1111',590,'2013-08-12 07:07:13.378375','2013-08-12 07:07:13.378375');
INSERT INTO "customerx_addresses" VALUES(591,'浙江省','宁波市鄞州区','1111',591,'2013-08-12 07:08:01.626545','2013-08-12 07:08:01.626545');
INSERT INTO "customerx_addresses" VALUES(592,'浙江省','宁波市鄞州区','1111',592,'2013-08-12 07:08:48.004352','2013-08-12 07:08:48.004352');
INSERT INTO "customerx_addresses" VALUES(593,'浙江省','奉化市','1111',593,'2013-08-12 07:09:25.149861','2013-08-12 07:09:25.149861');
INSERT INTO "customerx_addresses" VALUES(594,'浙江省','奉化市','1111',594,'2013-08-12 07:09:58.640083','2013-08-12 07:09:58.640083');
INSERT INTO "customerx_addresses" VALUES(595,'浙江省','宁波市鄞州区','1111',595,'2013-08-12 07:10:38.678393','2013-08-12 07:10:38.678393');
INSERT INTO "customerx_addresses" VALUES(596,'浙江省','奉化市','1111',596,'2013-08-12 07:11:25.509769','2013-08-12 07:11:25.509769');
INSERT INTO "customerx_addresses" VALUES(597,'浙江省','宁波市鄞州区','111',597,'2013-08-12 07:12:23.066938','2013-08-12 07:12:23.066938');
INSERT INTO "customerx_addresses" VALUES(598,'浙江省','宁波市宁海县','1111',598,'2013-08-12 07:13:09.009108','2013-08-12 07:13:09.009108');
INSERT INTO "customerx_addresses" VALUES(599,'浙江省','宁波市鄞州区','1111',599,'2013-08-12 07:13:51.044503','2013-08-12 07:13:51.044503');
INSERT INTO "customerx_addresses" VALUES(600,'浙江省','余姚市','1111',600,'2013-08-12 07:15:14.003759','2013-08-12 07:15:14.003759');
INSERT INTO "customerx_addresses" VALUES(601,'浙江省','余姚市','1111',601,'2013-08-12 07:15:51.207216','2013-08-12 07:15:51.207216');
INSERT INTO "customerx_addresses" VALUES(602,'浙江省','余姚市','1111',602,'2013-08-12 07:16:49.055706','2013-08-12 07:16:49.055706');
INSERT INTO "customerx_addresses" VALUES(603,'浙江省','宁波市北仑区','1111',603,'2013-08-12 07:17:54.678407','2013-08-12 07:17:54.678407');
INSERT INTO "customerx_addresses" VALUES(604,'浙江省','宁波市北仑区','1111',604,'2013-08-12 07:18:43.205354','2013-08-12 07:18:43.205354');
INSERT INTO "customerx_addresses" VALUES(605,'浙江省','宁波市保税区','1111',605,'2013-08-12 07:19:51.779808','2013-08-12 07:19:51.779808');
INSERT INTO "customerx_addresses" VALUES(606,'浙江省','奉化市','1111',606,'2013-08-12 07:20:36.783300','2013-08-12 07:20:36.783300');
INSERT INTO "customerx_addresses" VALUES(607,'浙江省','奉化市','1111',607,'2013-08-12 07:22:13.426546','2013-08-12 07:22:13.426546');
INSERT INTO "customerx_addresses" VALUES(608,'浙江省','奉化市','1111',608,'2013-08-12 07:23:25.807695','2013-08-12 07:23:25.807695');
INSERT INTO "customerx_addresses" VALUES(609,'浙江省','宁波保税西区','1111',609,'2013-08-12 07:24:11.636800','2013-08-12 07:24:11.636800');
INSERT INTO "customerx_addresses" VALUES(610,'浙江省','宁波市北仑区','1111',610,'2013-08-12 07:25:40.069477','2013-08-12 07:25:40.069477');
INSERT INTO "customerx_addresses" VALUES(611,'浙江省','奉化市','1111',611,'2013-08-12 07:26:53.070144','2013-08-12 07:26:53.070144');
INSERT INTO "customerx_addresses" VALUES(612,'浙江省','宁波市北仑区','1111',612,'2013-08-12 07:27:43.836934','2013-08-12 07:27:43.836934');
INSERT INTO "customerx_addresses" VALUES(613,'浙江省','余姚市','1111',613,'2013-08-12 07:29:16.043248','2013-08-12 07:29:16.043248');
INSERT INTO "customerx_addresses" VALUES(614,'浙江省','宁波市鄞州区','1111',614,'2013-08-12 07:30:15.374765','2013-08-12 07:30:15.374765');
INSERT INTO "customerx_addresses" VALUES(615,'浙江省','宁波市鄞州区','1111',615,'2013-08-12 07:31:21.125741','2013-08-12 07:31:21.125741');
INSERT INTO "customerx_addresses" VALUES(616,'浙江省','奉化市','1111',616,'2013-08-12 07:31:58.974710','2013-08-12 07:31:58.974710');
DROP TABLE IF EXISTS "customerx_contacts";
CREATE TABLE "customerx_contacts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "customer_id" integer, "name" varchar(255), "position" varchar(255), "phone" varchar(255), "cell_phone" varchar(255), "email" varchar(255), "brief_note" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "customerx_contacts" VALUES(1,1,'梅丹','','','','','','2013-06-03 15:18:31.062327','2013-06-10 05:05:41.661316');
INSERT INTO "customerx_contacts" VALUES(2,2,'付先生','','','','','','2013-06-10 05:19:17.892776','2013-06-10 05:19:17.892776');
INSERT INTO "customerx_contacts" VALUES(3,3,'小谢','','','','','','2013-06-10 05:21:11.541397','2013-06-10 05:21:11.541397');
INSERT INTO "customerx_contacts" VALUES(4,4,'陈鑫','','','18857478595','','','2013-07-05 07:01:57.928099','2013-07-05 07:01:57.928099');
INSERT INTO "customerx_contacts" VALUES(5,5,'董国俭','','','13003799639','','','2013-07-05 07:32:32.492896','2013-07-05 07:32:32.492896');
INSERT INTO "customerx_contacts" VALUES(6,6,'李良波','','','13806670172','','','2013-07-05 07:48:52.522157','2013-07-05 07:48:52.522157');
INSERT INTO "customerx_contacts" VALUES(7,7,'史波','','','15824506770','','','2013-07-05 07:51:03.233712','2013-07-05 07:51:03.233712');
INSERT INTO "customerx_contacts" VALUES(8,8,'宇创','','','','','','2013-07-05 08:15:10.570534','2013-07-05 08:15:10.570534');
INSERT INTO "customerx_contacts" VALUES(9,9,'1111','','','','','','2013-08-05 07:52:19.737240','2013-08-05 07:52:19.737240');
INSERT INTO "customerx_contacts" VALUES(10,10,'1111','','','','','','2013-08-05 07:53:45.507903','2013-08-05 07:53:45.507903');
INSERT INTO "customerx_contacts" VALUES(11,11,'1111','','','','','','2013-08-05 07:55:45.084741','2013-08-05 07:55:45.084741');
INSERT INTO "customerx_contacts" VALUES(12,12,'1111','','','','','','2013-08-05 07:56:42.820804','2013-08-05 07:56:42.820804');
INSERT INTO "customerx_contacts" VALUES(13,13,'1111','','','','','','2013-08-05 07:57:29.275998','2013-08-05 07:57:29.275998');
INSERT INTO "customerx_contacts" VALUES(14,14,'1111','','','','','','2013-08-05 07:58:03.504594','2013-08-05 07:58:03.504594');
INSERT INTO "customerx_contacts" VALUES(15,15,'1111','','','','','','2013-08-05 07:58:43.530759','2013-08-05 07:58:43.530759');
INSERT INTO "customerx_contacts" VALUES(16,16,'1111','','','','','','2013-08-05 07:59:21.658149','2013-08-05 07:59:21.658149');
INSERT INTO "customerx_contacts" VALUES(17,17,'1111','','','','','','2013-08-05 08:00:00.656393','2013-08-05 08:00:00.656393');
INSERT INTO "customerx_contacts" VALUES(18,18,'1111','','','','','','2013-08-05 08:00:35.193557','2013-08-05 08:00:35.193557');
INSERT INTO "customerx_contacts" VALUES(19,19,'1111','','','','','台资，工业缝纫机','2013-08-05 08:01:33.922852','2013-08-05 08:01:33.922852');
INSERT INTO "customerx_contacts" VALUES(20,20,'1111','','','','','','2013-08-05 08:02:14.301809','2013-08-05 08:02:14.301809');
INSERT INTO "customerx_contacts" VALUES(21,21,'1111','','','','','','2013-08-05 08:02:54.989685','2013-08-05 08:02:54.989685');
INSERT INTO "customerx_contacts" VALUES(22,22,'1111','','','','','','2013-08-05 08:03:36.546018','2013-08-05 08:03:36.546018');
INSERT INTO "customerx_contacts" VALUES(23,23,'1111','','','','','','2013-08-05 08:04:09.388424','2013-08-05 08:04:09.388424');
INSERT INTO "customerx_contacts" VALUES(24,24,'1111','','','','','','2013-08-05 08:04:41.475013','2013-08-05 08:04:41.475013');
INSERT INTO "customerx_contacts" VALUES(25,25,'1111','','','','','','2013-08-05 08:05:14.659902','2013-08-05 08:05:14.659902');
INSERT INTO "customerx_contacts" VALUES(26,26,'1111','','','','','','2013-08-05 08:05:50.197745','2013-08-05 08:05:50.197745');
INSERT INTO "customerx_contacts" VALUES(27,27,'1111','','','','','','2013-08-05 08:06:26.138877','2013-08-05 08:06:26.138877');
INSERT INTO "customerx_contacts" VALUES(28,28,'1111','','','','','','2013-08-05 08:06:58.947519','2013-08-05 08:06:58.947519');
INSERT INTO "customerx_contacts" VALUES(29,29,'1111','','','','','','2013-08-05 08:07:34.385662','2013-08-05 08:07:34.385662');
INSERT INTO "customerx_contacts" VALUES(30,30,'1111','','','','','','2013-08-05 08:08:10.870544','2013-08-05 08:08:10.870544');
INSERT INTO "customerx_contacts" VALUES(31,31,'1111','','','','','','2013-08-05 08:09:00.578845','2013-08-05 08:09:00.578845');
INSERT INTO "customerx_contacts" VALUES(32,32,'1111','','','','','','2013-08-05 08:09:36.644306','2013-08-05 08:09:36.644306');
INSERT INTO "customerx_contacts" VALUES(33,33,'1111','','','','','','2013-08-05 08:10:16.114789','2013-08-05 08:10:16.114789');
INSERT INTO "customerx_contacts" VALUES(34,34,'1111','','','','','','2013-08-05 08:11:07.241097','2013-08-05 08:11:07.241097');
INSERT INTO "customerx_contacts" VALUES(35,35,'1111','','','','','','2013-08-05 08:11:41.702798','2013-08-05 08:11:41.702798');
INSERT INTO "customerx_contacts" VALUES(36,36,'1111','','','','','','2013-08-05 08:12:26.680824','2013-08-05 08:12:26.680824');
INSERT INTO "customerx_contacts" VALUES(37,37,'1111','','','','','','2013-08-05 08:12:57.402899','2013-08-05 08:12:57.402899');
INSERT INTO "customerx_contacts" VALUES(38,38,'1111','','','','','','2013-08-05 08:13:26.749022','2013-08-05 08:13:26.749022');
INSERT INTO "customerx_contacts" VALUES(39,39,'1111','','','','','','2013-08-05 08:13:56.354267','2013-08-05 08:13:56.354267');
INSERT INTO "customerx_contacts" VALUES(40,40,'1111','','','','','','2013-08-05 08:14:28.261510','2013-08-05 08:14:28.261510');
INSERT INTO "customerx_contacts" VALUES(41,41,'1111','','','','','','2013-08-05 08:15:01.076512','2013-08-05 08:15:01.076512');
INSERT INTO "customerx_contacts" VALUES(42,42,'1111','','','','','','2013-08-05 08:15:30.957093','2013-08-05 08:15:30.957093');
INSERT INTO "customerx_contacts" VALUES(43,43,'1111','','','','','','2013-08-05 08:16:21.721903','2013-08-05 08:16:21.721903');
INSERT INTO "customerx_contacts" VALUES(44,44,'1111','','','','','','2013-08-05 08:18:39.236030','2013-08-05 08:18:39.236030');
INSERT INTO "customerx_contacts" VALUES(45,45,'1111','','','','','','2013-08-05 08:19:18.630469','2013-08-05 08:19:18.630469');
INSERT INTO "customerx_contacts" VALUES(46,46,'1111','','','','','','2013-08-05 08:19:51.237332','2013-08-05 08:19:51.237332');
INSERT INTO "customerx_contacts" VALUES(47,47,'1111','','','','','','2013-08-05 08:40:27.242317','2013-08-05 08:40:27.242317');
INSERT INTO "customerx_contacts" VALUES(48,48,'1111','','','','','','2013-08-05 08:42:44.503052','2013-08-05 08:42:44.503052');
INSERT INTO "customerx_contacts" VALUES(49,49,'1111','','','','','','2013-08-05 08:43:58.125724','2013-08-05 08:43:58.125724');
INSERT INTO "customerx_contacts" VALUES(50,50,'1111','','','','','','2013-08-05 08:45:06.182988','2013-08-05 08:45:06.182988');
INSERT INTO "customerx_contacts" VALUES(51,51,'1111','','','','','','2013-08-05 08:46:49.973215','2013-08-05 08:46:49.973215');
INSERT INTO "customerx_contacts" VALUES(52,52,'1111','','','','','','2013-08-05 08:47:41.703985','2013-08-05 08:47:41.703985');
INSERT INTO "customerx_contacts" VALUES(53,53,'1111','','','','','','2013-08-05 08:48:39.239137','2013-08-05 08:48:39.239137');
INSERT INTO "customerx_contacts" VALUES(54,54,'1111','','','','','','2013-08-05 08:50:48.032693','2013-08-05 08:50:48.032693');
INSERT INTO "customerx_contacts" VALUES(55,55,'1111','','','','','','2013-08-05 08:52:02.697203','2013-08-05 08:52:02.697203');
INSERT INTO "customerx_contacts" VALUES(56,56,'1111','','','','','','2013-08-05 08:53:00.812699','2013-08-05 08:53:00.812699');
INSERT INTO "customerx_contacts" VALUES(57,57,'1111','','','','','','2013-08-05 08:53:50.542532','2013-08-05 08:53:50.542532');
INSERT INTO "customerx_contacts" VALUES(58,58,'1111','','','','','','2013-08-05 08:54:57.152825','2013-08-05 08:54:57.152825');
INSERT INTO "customerx_contacts" VALUES(59,59,'1111','','','','','','2013-08-05 08:56:07.777177','2013-08-05 08:56:07.777177');
INSERT INTO "customerx_contacts" VALUES(60,60,'1111','','','','','','2013-08-06 00:22:47.223553','2013-08-06 00:22:47.223553');
INSERT INTO "customerx_contacts" VALUES(61,61,'1111','','','','','','2013-08-06 00:23:48.904110','2013-08-06 00:23:48.904110');
INSERT INTO "customerx_contacts" VALUES(62,62,'1111','','','','','','2013-08-06 00:24:43.354708','2013-08-06 00:24:43.354708');
INSERT INTO "customerx_contacts" VALUES(63,63,'1111','','','','','','2013-08-06 00:25:29.356267','2013-08-06 00:25:29.356267');
INSERT INTO "customerx_contacts" VALUES(64,64,'1111','','','','','','2013-08-06 00:26:21.927123','2013-08-06 00:26:21.927123');
INSERT INTO "customerx_contacts" VALUES(65,65,'1111','','','','','','2013-08-06 00:27:24.738274','2013-08-06 00:27:24.738274');
INSERT INTO "customerx_contacts" VALUES(66,66,'1111','','','','','','2013-08-06 00:28:32.085944','2013-08-06 00:28:32.085944');
INSERT INTO "customerx_contacts" VALUES(67,67,'1111','','','','','','2013-08-06 00:34:40.581782','2013-08-06 00:34:40.581782');
INSERT INTO "customerx_contacts" VALUES(68,68,'1111','','','','','','2013-08-06 00:35:44.438967','2013-08-06 00:35:44.438967');
INSERT INTO "customerx_contacts" VALUES(69,69,'1111','','','','','','2013-08-06 00:36:29.237005','2013-08-06 00:36:29.237005');
INSERT INTO "customerx_contacts" VALUES(70,70,'1111','','','','','','2013-08-06 00:37:15.370842','2013-08-06 00:37:15.370842');
INSERT INTO "customerx_contacts" VALUES(71,71,'1111','','','','','','2013-08-06 00:38:06.293788','2013-08-06 00:38:06.293788');
INSERT INTO "customerx_contacts" VALUES(72,72,'1111','','','','','','2013-08-06 00:38:55.063946','2013-08-06 00:38:55.063946');
INSERT INTO "customerx_contacts" VALUES(73,73,'1111','','','','','','2013-08-06 00:40:23.276197','2013-08-06 00:40:23.276197');
INSERT INTO "customerx_contacts" VALUES(74,74,'1111','','','','','','2013-08-06 00:41:08.030625','2013-08-06 00:41:08.030625');
INSERT INTO "customerx_contacts" VALUES(75,75,'1111','','','','','','2013-08-06 00:41:49.348004','2013-08-06 00:41:49.348004');
INSERT INTO "customerx_contacts" VALUES(76,76,'1111','','','','','','2013-08-06 00:42:32.609033','2013-08-06 00:42:32.609033');
INSERT INTO "customerx_contacts" VALUES(77,77,'1111','','','','','','2013-08-06 00:43:31.910012','2013-08-06 00:43:31.910012');
INSERT INTO "customerx_contacts" VALUES(78,78,'1111','','','','','','2013-08-06 00:44:11.686663','2013-08-06 00:44:11.686663');
INSERT INTO "customerx_contacts" VALUES(79,79,'1111','','','','','','2013-08-06 00:44:52.123194','2013-08-06 00:44:52.123194');
INSERT INTO "customerx_contacts" VALUES(80,80,'1111','','','','','','2013-08-06 00:45:29.322683','2013-08-06 00:45:29.322683');
INSERT INTO "customerx_contacts" VALUES(81,81,'1111','','','','','','2013-08-06 00:47:21.570583','2013-08-06 00:47:21.570583');
INSERT INTO "customerx_contacts" VALUES(82,82,'1111','','','','','','2013-08-06 00:48:23.881768','2013-08-06 00:48:23.881768');
INSERT INTO "customerx_contacts" VALUES(83,83,'1111','','','','','','2013-08-06 00:49:08.836204','2013-08-06 00:49:08.836204');
INSERT INTO "customerx_contacts" VALUES(84,84,'1111','','','','','','2013-08-06 00:49:46.491225','2013-08-06 00:49:46.491225');
INSERT INTO "customerx_contacts" VALUES(85,85,'1111','','','','','','2013-08-06 00:50:24.798961','2013-08-06 00:50:24.798961');
INSERT INTO "customerx_contacts" VALUES(86,86,'1111','','','','','','2013-08-06 00:51:00.798718','2013-08-06 00:51:00.798718');
INSERT INTO "customerx_contacts" VALUES(87,87,'1111','','','','','','2013-08-06 01:01:24.159497','2013-08-06 01:01:24.159497');
INSERT INTO "customerx_contacts" VALUES(88,88,'1111','','','','','','2013-08-06 01:02:11.017158','2013-08-06 01:02:11.017158');
INSERT INTO "customerx_contacts" VALUES(89,89,'1111','','','','','','2013-08-06 01:02:51.638214','2013-08-06 01:02:51.638214');
INSERT INTO "customerx_contacts" VALUES(90,90,'1111','','','','','','2013-08-06 01:03:33.785130','2013-08-06 01:03:33.785130');
INSERT INTO "customerx_contacts" VALUES(91,91,'1111','','','','','','2013-08-06 01:04:18.999069','2013-08-06 01:04:18.999069');
INSERT INTO "customerx_contacts" VALUES(92,92,'1111','','','','','','2013-08-06 01:05:06.845552','2013-08-06 01:05:06.845552');
INSERT INTO "customerx_contacts" VALUES(93,93,'1111','','','','','','2013-08-06 01:06:53.253418','2013-08-06 01:06:53.253418');
INSERT INTO "customerx_contacts" VALUES(94,94,'1111','','','','','','2013-08-06 01:07:47.635235','2013-08-06 01:07:47.635235');
INSERT INTO "customerx_contacts" VALUES(95,95,'1111','','','','','','2013-08-06 01:08:50.413212','2013-08-06 01:08:50.413212');
INSERT INTO "customerx_contacts" VALUES(96,96,'1111','','','','','','2013-08-06 01:09:37.089540','2013-08-06 01:09:37.089540');
INSERT INTO "customerx_contacts" VALUES(97,97,'1111','','','','','','2013-08-06 01:10:26.559773','2013-08-06 01:10:26.559773');
INSERT INTO "customerx_contacts" VALUES(98,98,'1111','','','','','','2013-08-06 01:11:17.091098','2013-08-06 01:11:17.091098');
INSERT INTO "customerx_contacts" VALUES(99,99,'1111','','','','','','2013-08-06 01:12:30.139363','2013-08-06 01:12:30.139363');
INSERT INTO "customerx_contacts" VALUES(100,100,'1111','','','','','','2013-08-06 01:13:12.857041','2013-08-06 01:13:12.857041');
INSERT INTO "customerx_contacts" VALUES(101,101,'1111','','','','','','2013-08-06 01:14:08.067870','2013-08-06 01:14:08.067870');
INSERT INTO "customerx_contacts" VALUES(102,102,'1111','','','','','','2013-08-06 01:14:55.918517','2013-08-06 01:14:55.918517');
INSERT INTO "customerx_contacts" VALUES(103,103,'1111','','','','','','2013-08-06 01:15:38.549262','2013-08-06 01:15:38.549262');
INSERT INTO "customerx_contacts" VALUES(104,104,'1111','','','','','','2013-08-06 01:16:25.412343','2013-08-06 01:16:25.412343');
INSERT INTO "customerx_contacts" VALUES(105,105,'1111','','','','','','2013-08-06 01:17:07.358164','2013-08-06 01:17:07.358164');
INSERT INTO "customerx_contacts" VALUES(106,106,'1111','','','','','','2013-08-06 01:17:47.112328','2013-08-06 01:17:47.112328');
INSERT INTO "customerx_contacts" VALUES(107,107,'1111','','','','','','2013-08-06 01:18:33.189058','2013-08-06 01:18:33.189058');
INSERT INTO "customerx_contacts" VALUES(108,108,'1111','','','','','','2013-08-06 01:19:31.821725','2013-08-06 01:19:31.821725');
INSERT INTO "customerx_contacts" VALUES(109,109,'1111','','','','','','2013-08-06 01:22:47.544373','2013-08-06 01:22:47.544373');
INSERT INTO "customerx_contacts" VALUES(110,110,'1111','','','','','','2013-08-06 01:23:32.823856','2013-08-06 01:23:32.823856');
INSERT INTO "customerx_contacts" VALUES(111,111,'1111','','','','','','2013-08-06 01:24:17.623977','2013-08-06 01:24:17.623977');
INSERT INTO "customerx_contacts" VALUES(112,112,'1111','','','','','','2013-08-06 01:25:08.015071','2013-08-06 01:25:08.015071');
INSERT INTO "customerx_contacts" VALUES(113,113,'1111','','','','','','2013-08-06 01:25:55.093613','2013-08-06 01:25:55.093613');
INSERT INTO "customerx_contacts" VALUES(114,114,'1111','','','','','','2013-08-06 01:26:33.614622','2013-08-06 01:26:33.614622');
INSERT INTO "customerx_contacts" VALUES(115,115,'1111','','','','','','2013-08-06 01:27:43.388264','2013-08-06 01:27:43.388264');
INSERT INTO "customerx_contacts" VALUES(116,116,'1111','','','','','','2013-08-06 01:28:24.834775','2013-08-06 01:28:24.834775');
INSERT INTO "customerx_contacts" VALUES(117,117,'1111','','','','','','2013-08-06 01:29:14.044055','2013-08-06 01:29:14.044055');
INSERT INTO "customerx_contacts" VALUES(118,118,'1111','','','','','','2013-08-06 01:29:57.443726','2013-08-06 01:29:57.443726');
INSERT INTO "customerx_contacts" VALUES(119,119,'1111','','','','','','2013-08-06 01:34:37.632043','2013-08-06 01:34:37.632043');
INSERT INTO "customerx_contacts" VALUES(120,120,'1111','','','','','','2013-08-06 01:35:29.387961','2013-08-06 01:35:29.387961');
INSERT INTO "customerx_contacts" VALUES(121,121,'1111','','','','','','2013-08-06 01:36:12.617656','2013-08-06 01:36:12.617656');
INSERT INTO "customerx_contacts" VALUES(122,122,'1111','','','','','','2013-08-06 01:36:53.181710','2013-08-06 01:36:53.181710');
INSERT INTO "customerx_contacts" VALUES(123,123,'1111','','','','','','2013-08-06 01:37:37.049608','2013-08-06 01:37:37.049608');
INSERT INTO "customerx_contacts" VALUES(124,124,'1111','','','','','','2013-08-06 01:38:19.934646','2013-08-06 01:38:19.934646');
INSERT INTO "customerx_contacts" VALUES(125,125,'1111','','','','','','2013-08-06 01:39:07.462610','2013-08-06 01:39:07.462610');
INSERT INTO "customerx_contacts" VALUES(126,126,'1111','','','','','','2013-08-06 01:39:50.475843','2013-08-06 01:39:50.475843');
INSERT INTO "customerx_contacts" VALUES(127,127,'1111','','','','','','2013-08-06 01:40:37.917684','2013-08-06 01:40:37.917684');
INSERT INTO "customerx_contacts" VALUES(128,128,'1111','','','','','','2013-08-06 01:41:21.906005','2013-08-06 01:41:21.906005');
INSERT INTO "customerx_contacts" VALUES(129,129,'1111','','','','','','2013-08-06 01:42:06.164268','2013-08-06 01:42:06.164268');
INSERT INTO "customerx_contacts" VALUES(130,130,'1111','','','','','','2013-08-06 01:42:49.923497','2013-08-06 01:42:49.923497');
INSERT INTO "customerx_contacts" VALUES(131,131,'1111','','','','','','2013-08-06 01:43:29.302681','2013-08-06 01:43:29.302681');
INSERT INTO "customerx_contacts" VALUES(132,132,'1111','','','','','','2013-08-06 01:44:10.888271','2013-08-06 01:44:10.888271');
INSERT INTO "customerx_contacts" VALUES(133,133,'1111','','','','','','2013-08-06 01:44:48.281363','2013-08-06 01:44:48.281363');
INSERT INTO "customerx_contacts" VALUES(134,134,'1111','','','','','','2013-08-06 01:45:31.779380','2013-08-06 01:45:31.779380');
INSERT INTO "customerx_contacts" VALUES(135,135,'1111','','','','','','2013-08-06 01:46:18.329628','2013-08-06 01:46:18.329628');
INSERT INTO "customerx_contacts" VALUES(136,136,'1111','','','','','','2013-08-06 01:46:53.439283','2013-08-06 01:46:53.439283');
INSERT INTO "customerx_contacts" VALUES(137,137,'1111','','','','','','2013-08-06 01:47:51.369486','2013-08-06 01:47:51.369486');
INSERT INTO "customerx_contacts" VALUES(138,138,'1111','','','','','','2013-08-06 01:48:30.648759','2013-08-06 01:48:30.648759');
INSERT INTO "customerx_contacts" VALUES(139,139,'1111','','','','','','2013-08-06 01:49:17.544435','2013-08-06 01:49:17.544435');
INSERT INTO "customerx_contacts" VALUES(140,140,'1111','','','','','','2013-08-06 01:49:56.065213','2013-08-06 01:49:56.065213');
INSERT INTO "customerx_contacts" VALUES(141,141,'1111','','','','','','2013-08-06 01:50:34.564761','2013-08-06 01:50:34.564761');
INSERT INTO "customerx_contacts" VALUES(142,142,'1111','','','','','','2013-08-06 01:51:16.044163','2013-08-06 01:51:16.044163');
INSERT INTO "customerx_contacts" VALUES(143,143,'1111','','','','','','2013-08-06 01:51:55.055919','2013-08-06 01:51:55.055919');
INSERT INTO "customerx_contacts" VALUES(144,144,'1111','','','','','','2013-08-06 01:52:52.161015','2013-08-06 01:52:52.161015');
INSERT INTO "customerx_contacts" VALUES(145,145,'1111','','','','','','2013-08-06 01:53:35.915611','2013-08-06 01:53:35.915611');
INSERT INTO "customerx_contacts" VALUES(146,146,'1111','','','','','','2013-08-06 01:54:30.095430','2013-08-06 01:54:30.095430');
INSERT INTO "customerx_contacts" VALUES(147,147,'1111','','','','','','2013-08-06 01:55:17.018363','2013-08-06 01:55:17.018363');
INSERT INTO "customerx_contacts" VALUES(148,148,'1111','','','','','','2013-08-06 01:56:07.404401','2013-08-06 01:56:07.404401');
INSERT INTO "customerx_contacts" VALUES(149,149,'1111','','','','','','2013-08-06 01:56:45.441837','2013-08-06 01:56:45.441837');
INSERT INTO "customerx_contacts" VALUES(150,150,'1111','','','','','','2013-08-06 01:57:35.600289','2013-08-06 01:57:35.600289');
INSERT INTO "customerx_contacts" VALUES(151,151,'1111','','','','','','2013-08-06 01:58:13.184805','2013-08-06 01:58:13.184805');
INSERT INTO "customerx_contacts" VALUES(152,152,'1111','','','','','','2013-08-06 01:58:53.850846','2013-08-06 01:58:53.850846');
INSERT INTO "customerx_contacts" VALUES(153,153,'1111','','','','','','2013-08-06 01:59:32.232601','2013-08-06 01:59:32.232601');
INSERT INTO "customerx_contacts" VALUES(154,154,'1111','','','','','','2013-08-06 02:00:10.643455','2013-08-06 02:00:10.643455');
INSERT INTO "customerx_contacts" VALUES(155,155,'1111','','','','','','2013-08-06 02:00:49.279993','2013-08-06 02:00:49.279993');
INSERT INTO "customerx_contacts" VALUES(156,156,'1111','','','','','','2013-08-06 02:01:47.207619','2013-08-06 02:01:47.207619');
INSERT INTO "customerx_contacts" VALUES(157,157,'1111','','','','','','2013-08-06 02:02:35.510310','2013-08-06 02:02:35.510310');
INSERT INTO "customerx_contacts" VALUES(158,158,'1111','','','','','','2013-08-06 02:04:00.051632','2013-08-06 02:04:00.051632');
INSERT INTO "customerx_contacts" VALUES(159,159,'1111','','','','','','2013-08-06 02:05:10.145640','2013-08-06 02:05:10.145640');
INSERT INTO "customerx_contacts" VALUES(160,160,'1111','','','','','','2013-08-06 02:05:49.848771','2013-08-06 02:05:49.848771');
INSERT INTO "customerx_contacts" VALUES(161,161,'1111','','','','','','2013-08-06 02:06:36.735238','2013-08-06 02:06:36.735238');
INSERT INTO "customerx_contacts" VALUES(162,162,'1111','','','','','','2013-08-06 02:07:14.639691','2013-08-06 02:07:14.639691');
INSERT INTO "customerx_contacts" VALUES(163,163,'1111','','','','','','2013-08-06 02:08:04.665246','2013-08-06 02:08:04.665246');
INSERT INTO "customerx_contacts" VALUES(164,164,'1111','','','','','','2013-08-06 02:08:43.172537','2013-08-06 02:08:43.172537');
INSERT INTO "customerx_contacts" VALUES(165,165,'1111','','','','','','2013-08-06 02:09:32.168180','2013-08-06 02:09:32.168180');
INSERT INTO "customerx_contacts" VALUES(166,166,'1111','','','','','','2013-08-06 02:10:39.108863','2013-08-06 02:10:39.108863');
INSERT INTO "customerx_contacts" VALUES(167,167,'1111','','','','','','2013-08-06 02:11:28.869371','2013-08-06 02:11:28.869371');
INSERT INTO "customerx_contacts" VALUES(168,168,'1111','','','','','','2013-08-06 02:12:08.335602','2013-08-06 02:12:08.335602');
INSERT INTO "customerx_contacts" VALUES(169,169,'1111','','','','','','2013-08-06 02:12:46.678619','2013-08-06 02:12:46.678619');
INSERT INTO "customerx_contacts" VALUES(170,170,'1111','','','','','','2013-08-06 02:16:14.995380','2013-08-06 02:16:14.995380');
INSERT INTO "customerx_contacts" VALUES(171,171,'1111','','','','','','2013-08-06 02:17:00.051679','2013-08-06 02:17:00.051679');
INSERT INTO "customerx_contacts" VALUES(172,172,'1111','','','','','','2013-08-06 02:18:32.948870','2013-08-06 02:18:32.948870');
INSERT INTO "customerx_contacts" VALUES(173,173,'1111','','','','','','2013-08-06 02:19:34.143905','2013-08-06 02:19:34.143905');
INSERT INTO "customerx_contacts" VALUES(174,174,'1111','','','','','','2013-08-06 02:20:17.757782','2013-08-06 02:20:17.757782');
INSERT INTO "customerx_contacts" VALUES(175,175,'1111','','','','','','2013-08-06 02:20:54.550516','2013-08-06 02:20:54.550516');
INSERT INTO "customerx_contacts" VALUES(176,176,'1111','','','','','','2013-08-06 02:21:37.033508','2013-08-06 02:21:37.033508');
INSERT INTO "customerx_contacts" VALUES(177,177,'1111','','','','','','2013-08-06 02:22:25.980363','2013-08-06 02:22:25.980363');
INSERT INTO "customerx_contacts" VALUES(178,178,'1111','','','','','','2013-08-06 05:09:06.103074','2013-08-06 05:09:06.103074');
INSERT INTO "customerx_contacts" VALUES(179,179,'1111','','','','','','2013-08-06 05:09:59.986973','2013-08-06 05:09:59.986973');
INSERT INTO "customerx_contacts" VALUES(180,180,'1111','','','','','','2013-08-06 05:10:42.127571','2013-08-06 05:10:42.127571');
INSERT INTO "customerx_contacts" VALUES(181,181,'1111','','','','','','2013-08-06 05:11:37.293159','2013-08-06 05:11:37.293159');
INSERT INTO "customerx_contacts" VALUES(182,182,'1111','','','','','','2013-08-06 05:12:15.358010','2013-08-06 05:12:15.358010');
INSERT INTO "customerx_contacts" VALUES(183,183,'1111','','','','','','2013-08-06 05:12:58.309153','2013-08-06 05:12:58.309153');
INSERT INTO "customerx_contacts" VALUES(184,184,'1111','','','','','','2013-08-06 05:13:39.888848','2013-08-06 05:13:39.888848');
INSERT INTO "customerx_contacts" VALUES(185,185,'1111','','','','','','2013-08-06 05:14:25.709414','2013-08-06 05:14:25.709414');
INSERT INTO "customerx_contacts" VALUES(186,186,'1111','','','','','','2013-08-06 05:15:10.462207','2013-08-06 05:15:10.462207');
INSERT INTO "customerx_contacts" VALUES(187,187,'1111','','','','','','2013-08-06 05:15:50.375421','2013-08-06 05:15:50.375421');
INSERT INTO "customerx_contacts" VALUES(188,188,'1111','','','','','','2013-08-06 05:16:55.726264','2013-08-06 05:16:55.726264');
INSERT INTO "customerx_contacts" VALUES(189,189,'1111','','','','','','2013-08-06 05:17:35.859729','2013-08-06 05:17:35.859729');
INSERT INTO "customerx_contacts" VALUES(190,190,'1111','','','','','','2013-08-06 05:18:26.984987','2013-08-06 05:18:26.984987');
INSERT INTO "customerx_contacts" VALUES(191,191,'1111','','','','','','2013-08-06 05:19:24.174883','2013-08-06 05:19:24.174883');
INSERT INTO "customerx_contacts" VALUES(192,192,'1111','','','','','','2013-08-06 05:20:07.733766','2013-08-06 05:20:07.733766');
INSERT INTO "customerx_contacts" VALUES(193,193,'1111','','','','','','2013-08-06 05:20:44.854749','2013-08-06 05:20:44.854749');
INSERT INTO "customerx_contacts" VALUES(194,194,'1111','','','','','','2013-08-06 05:21:44.951379','2013-08-06 05:21:44.951379');
INSERT INTO "customerx_contacts" VALUES(195,195,'1111','','','','','','2013-08-06 07:26:11.766548','2013-08-06 07:26:11.766548');
INSERT INTO "customerx_contacts" VALUES(196,196,'1111','','','','','','2013-08-06 07:29:45.932161','2013-08-06 07:29:45.932161');
INSERT INTO "customerx_contacts" VALUES(197,197,'1111','','','','','','2013-08-06 07:31:30.571220','2013-08-06 07:31:30.571220');
INSERT INTO "customerx_contacts" VALUES(198,198,'1111','','','','','','2013-08-06 07:32:36.812656','2013-08-06 07:32:36.812656');
INSERT INTO "customerx_contacts" VALUES(199,199,'1111','','','','','','2013-08-06 07:34:13.404689','2013-08-06 07:34:13.404689');
INSERT INTO "customerx_contacts" VALUES(200,200,'1111','','','','','','2013-08-06 23:59:39.247774','2013-08-06 23:59:39.247774');
INSERT INTO "customerx_contacts" VALUES(201,201,'1111','','','','','','2013-08-07 00:01:38.560142','2013-08-07 00:01:38.560142');
INSERT INTO "customerx_contacts" VALUES(202,202,'1111','','','','','','2013-08-07 00:02:51.467634','2013-08-07 00:02:51.467634');
INSERT INTO "customerx_contacts" VALUES(203,203,'1111','','','','','','2013-08-07 00:03:48.624526','2013-08-07 00:03:48.624526');
INSERT INTO "customerx_contacts" VALUES(204,204,'1111','','','','','','2013-08-07 00:06:53.979729','2013-08-07 00:06:53.979729');
INSERT INTO "customerx_contacts" VALUES(205,205,'1111','','','','','','2013-08-07 00:08:07.765985','2013-08-07 00:08:07.765985');
INSERT INTO "customerx_contacts" VALUES(206,206,'1111','','','','','','2013-08-07 00:08:50.329922','2013-08-07 00:08:50.329922');
INSERT INTO "customerx_contacts" VALUES(207,207,'1111','','','','','','2013-08-07 00:09:47.844946','2013-08-07 00:09:47.844946');
INSERT INTO "customerx_contacts" VALUES(208,208,'1111','','','','','','2013-08-07 00:10:45.144814','2013-08-07 00:10:45.144814');
INSERT INTO "customerx_contacts" VALUES(209,209,'1111','','','','','','2013-08-07 00:11:26.711472','2013-08-07 00:11:26.711472');
INSERT INTO "customerx_contacts" VALUES(210,210,'1111','','','','','','2013-08-07 00:12:05.507763','2013-08-07 00:12:05.507763');
INSERT INTO "customerx_contacts" VALUES(211,211,'1111','','','','','','2013-08-07 00:13:11.573942','2013-08-07 00:13:11.573942');
INSERT INTO "customerx_contacts" VALUES(212,212,'1111','','','','','','2013-08-07 00:14:35.471693','2013-08-07 00:14:35.471693');
INSERT INTO "customerx_contacts" VALUES(213,213,'1111','','','','','','2013-08-07 00:15:17.154131','2013-08-07 00:15:17.154131');
INSERT INTO "customerx_contacts" VALUES(214,214,'1111','','','','','','2013-08-07 00:16:01.348809','2013-08-07 00:16:01.348809');
INSERT INTO "customerx_contacts" VALUES(215,215,'1111','','','','','','2013-08-07 00:17:00.731823','2013-08-07 00:17:00.731823');
INSERT INTO "customerx_contacts" VALUES(216,216,'1111','','','','','','2013-08-07 00:17:41.643925','2013-08-07 00:17:41.643925');
INSERT INTO "customerx_contacts" VALUES(217,217,'1111','','','','','','2013-08-07 00:19:38.053104','2013-08-07 00:19:38.053104');
INSERT INTO "customerx_contacts" VALUES(218,218,'1111','','','','','','2013-08-07 00:20:36.336690','2013-08-07 00:20:36.336690');
INSERT INTO "customerx_contacts" VALUES(219,219,'1111','','','','','','2013-08-07 00:21:20.153419','2013-08-07 00:21:20.153419');
INSERT INTO "customerx_contacts" VALUES(220,220,'1111','','','','','','2013-08-07 00:22:04.587155','2013-08-07 00:22:04.587155');
INSERT INTO "customerx_contacts" VALUES(221,221,'1111','','','','','','2013-08-07 00:22:53.939561','2013-08-07 00:22:53.939561');
INSERT INTO "customerx_contacts" VALUES(222,222,'1111','','','','','','2013-08-07 00:23:42.453576','2013-08-07 00:23:42.453576');
INSERT INTO "customerx_contacts" VALUES(223,223,'1111','','','','','','2013-08-07 00:24:36.326130','2013-08-07 00:24:36.326130');
INSERT INTO "customerx_contacts" VALUES(224,224,'1111','','','','','','2013-08-07 00:25:12.716269','2013-08-07 00:25:12.716269');
INSERT INTO "customerx_contacts" VALUES(225,225,'1111','','','','','','2013-08-07 00:39:16.856651','2013-08-07 00:39:16.856651');
INSERT INTO "customerx_contacts" VALUES(226,226,'1111','','','','','','2013-08-07 00:42:09.821113','2013-08-07 00:42:09.821113');
INSERT INTO "customerx_contacts" VALUES(227,227,'1111','','','','','','2013-08-07 00:43:05.822395','2013-08-07 00:43:05.822395');
INSERT INTO "customerx_contacts" VALUES(228,228,'1111','','','','','','2013-08-07 00:43:57.594376','2013-08-07 00:43:57.594376');
INSERT INTO "customerx_contacts" VALUES(229,229,'1111','','','','','','2013-08-07 00:44:47.844636','2013-08-07 00:44:47.844636');
INSERT INTO "customerx_contacts" VALUES(230,230,'1111','','','','','','2013-08-07 00:47:53.061542','2013-08-07 00:47:53.061542');
INSERT INTO "customerx_contacts" VALUES(231,231,'1111','','','','','','2013-08-07 00:48:50.546851','2013-08-07 00:48:50.546851');
INSERT INTO "customerx_contacts" VALUES(232,232,'1111','','','','','','2013-08-07 00:49:29.927228','2013-08-07 00:49:29.927228');
INSERT INTO "customerx_contacts" VALUES(233,233,'1111','','','','','','2013-08-07 00:50:05.112493','2013-08-07 00:50:05.112493');
INSERT INTO "customerx_contacts" VALUES(234,234,'1111','','','','','','2013-08-07 00:50:45.399020','2013-08-07 00:50:45.399020');
INSERT INTO "customerx_contacts" VALUES(235,235,'1111','','','','','','2013-08-07 00:51:32.261756','2013-08-07 00:51:32.261756');
INSERT INTO "customerx_contacts" VALUES(236,236,'1111','','','','','','2013-08-07 00:52:24.535295','2013-08-07 00:52:24.535295');
INSERT INTO "customerx_contacts" VALUES(237,237,'1111','','','','','','2013-08-07 00:53:42.308676','2013-08-07 00:53:42.308676');
INSERT INTO "customerx_contacts" VALUES(238,238,'1111','','','','','','2013-08-07 01:27:20.392146','2013-08-07 01:27:20.392146');
INSERT INTO "customerx_contacts" VALUES(239,239,'1111','','','','','','2013-08-07 01:28:32.428785','2013-08-07 01:28:32.428785');
INSERT INTO "customerx_contacts" VALUES(240,240,'1111','','','','','','2013-08-07 01:29:29.528894','2013-08-07 01:29:29.528894');
INSERT INTO "customerx_contacts" VALUES(241,241,'1111','','','','','','2013-08-07 01:57:14.388351','2013-08-07 01:57:14.388351');
INSERT INTO "customerx_contacts" VALUES(242,242,'1111','','','','','','2013-08-07 02:02:06.008216','2013-08-07 02:02:06.008216');
INSERT INTO "customerx_contacts" VALUES(243,243,'1111','','','','','','2013-08-07 02:03:56.576749','2013-08-07 02:03:56.576749');
INSERT INTO "customerx_contacts" VALUES(244,244,'1111','','','','','','2013-08-07 02:04:45.679714','2013-08-07 02:04:45.679714');
INSERT INTO "customerx_contacts" VALUES(245,245,'1111','','','','','','2013-08-07 02:05:31.565967','2013-08-07 02:05:31.565967');
INSERT INTO "customerx_contacts" VALUES(246,246,'1111','','','','','','2013-08-07 02:06:14.612786','2013-08-07 02:06:14.612786');
INSERT INTO "customerx_contacts" VALUES(247,247,'1111','','','','','','2013-08-07 02:07:03.853020','2013-08-07 02:07:03.853020');
INSERT INTO "customerx_contacts" VALUES(248,248,'1111','','','','','','2013-08-07 02:50:18.408444','2013-08-07 02:50:18.408444');
INSERT INTO "customerx_contacts" VALUES(249,249,'1111','','','','','','2013-08-07 02:51:08.833656','2013-08-07 02:51:08.833656');
INSERT INTO "customerx_contacts" VALUES(250,250,'1111','','','','','','2013-08-07 02:51:56.038118','2013-08-07 02:51:56.038118');
INSERT INTO "customerx_contacts" VALUES(251,251,'1111','','','','','','2013-08-07 02:52:54.855129','2013-08-07 02:52:54.855129');
INSERT INTO "customerx_contacts" VALUES(252,252,'1111','','','','','','2013-08-07 02:53:50.030054','2013-08-07 02:53:50.030054');
INSERT INTO "customerx_contacts" VALUES(253,253,'1111','','','','','','2013-08-07 02:54:27.984463','2013-08-07 02:54:27.984463');
INSERT INTO "customerx_contacts" VALUES(254,254,'1111','','','','','','2013-08-07 02:55:53.858532','2013-08-07 02:55:53.858532');
INSERT INTO "customerx_contacts" VALUES(255,255,'1111','','','','','','2013-08-07 02:57:46.004508','2013-08-07 02:57:46.004508');
INSERT INTO "customerx_contacts" VALUES(256,256,'1111','','','','','','2013-08-07 05:12:21.188293','2013-08-07 05:12:21.188293');
INSERT INTO "customerx_contacts" VALUES(257,257,'1111','','','','','','2013-08-07 05:13:18.586168','2013-08-07 05:13:18.586168');
INSERT INTO "customerx_contacts" VALUES(258,258,'1111','','','','','','2013-08-07 05:13:56.979327','2013-08-07 05:13:56.979327');
INSERT INTO "customerx_contacts" VALUES(259,259,'1111','','','','','','2013-08-07 05:14:41.036234','2013-08-07 05:14:41.036234');
INSERT INTO "customerx_contacts" VALUES(260,260,'1111','','','','','','2013-08-07 05:15:17.552709','2013-08-07 05:15:17.552709');
INSERT INTO "customerx_contacts" VALUES(261,261,'1111','','','','','','2013-08-07 05:16:05.537462','2013-08-07 05:16:05.537462');
INSERT INTO "customerx_contacts" VALUES(262,262,'1111','','','','','','2013-08-07 05:16:44.173205','2013-08-07 05:16:44.173205');
INSERT INTO "customerx_contacts" VALUES(263,263,'1111','','','','','','2013-08-07 05:17:21.888891','2013-08-07 05:17:21.888891');
INSERT INTO "customerx_contacts" VALUES(264,264,'1111','','','','','','2013-08-07 05:18:04.151445','2013-08-07 05:18:04.151445');
INSERT INTO "customerx_contacts" VALUES(265,265,'1111','','','','','','2013-08-07 05:18:45.196511','2013-08-07 05:18:45.196511');
INSERT INTO "customerx_contacts" VALUES(266,266,'1111','','','','','','2013-08-07 05:19:26.276176','2013-08-07 05:19:26.276176');
INSERT INTO "customerx_contacts" VALUES(267,267,'1111','','','','','','2013-08-07 05:20:08.469856','2013-08-07 05:20:08.469856');
INSERT INTO "customerx_contacts" VALUES(268,268,'1111','','','','','','2013-08-07 05:20:44.915828','2013-08-07 05:20:44.915828');
INSERT INTO "customerx_contacts" VALUES(269,269,'1111','','','','','','2013-08-07 05:21:23.388206','2013-08-07 05:21:23.388206');
INSERT INTO "customerx_contacts" VALUES(270,270,'1111','','','','','','2013-08-07 05:22:21.539360','2013-08-07 05:22:21.539360');
INSERT INTO "customerx_contacts" VALUES(271,271,'1111','','','','','','2013-08-07 05:22:57.896991','2013-08-07 05:22:57.896991');
INSERT INTO "customerx_contacts" VALUES(272,272,'1111','','','','','','2013-08-07 05:23:36.609040','2013-08-07 05:23:36.609040');
INSERT INTO "customerx_contacts" VALUES(273,273,'1111','','','','','','2013-08-07 05:24:16.183025','2013-08-07 05:24:16.183025');
INSERT INTO "customerx_contacts" VALUES(274,274,'1111','','','','','','2013-08-07 05:24:51.123272','2013-08-07 05:24:51.123272');
INSERT INTO "customerx_contacts" VALUES(275,275,'1111','','','','','','2013-08-07 05:26:11.810694','2013-08-07 05:26:11.810694');
INSERT INTO "customerx_contacts" VALUES(276,276,'1111','','','','','','2013-08-07 05:28:05.814170','2013-08-07 05:28:05.814170');
INSERT INTO "customerx_contacts" VALUES(277,277,'1111','','','','','','2013-08-07 05:29:09.883864','2013-08-07 05:29:09.883864');
INSERT INTO "customerx_contacts" VALUES(278,278,'1111','','','','','','2013-08-07 05:30:05.189926','2013-08-07 05:30:05.189926');
INSERT INTO "customerx_contacts" VALUES(279,279,'1111','','','','','','2013-08-07 05:31:02.799833','2013-08-07 05:31:02.799833');
INSERT INTO "customerx_contacts" VALUES(280,280,'1111','','','','','','2013-08-07 05:31:43.850565','2013-08-07 05:31:43.850565');
INSERT INTO "customerx_contacts" VALUES(281,281,'1111','','','','','','2013-08-07 05:32:25.971404','2013-08-07 05:32:25.971404');
INSERT INTO "customerx_contacts" VALUES(282,282,'1111','','','','','','2013-08-07 05:33:44.643111','2013-08-07 05:33:44.643111');
INSERT INTO "customerx_contacts" VALUES(283,283,'1111','','','','','','2013-08-07 05:34:29.673833','2013-08-07 05:34:29.673833');
INSERT INTO "customerx_contacts" VALUES(284,284,'1111','','','','','','2013-08-07 05:36:39.322350','2013-08-07 05:36:39.322350');
INSERT INTO "customerx_contacts" VALUES(285,285,'1111','','','','','','2013-08-07 05:40:25.144463','2013-08-07 05:40:25.144463');
INSERT INTO "customerx_contacts" VALUES(286,286,'1111','','','','','','2013-08-07 05:41:52.652947','2013-08-07 05:41:52.652947');
INSERT INTO "customerx_contacts" VALUES(287,287,'1111','','','','','','2013-08-07 05:42:41.995862','2013-08-07 05:42:41.995862');
INSERT INTO "customerx_contacts" VALUES(288,288,'1111','','','','','','2013-08-07 05:45:15.953025','2013-08-07 05:45:15.953025');
INSERT INTO "customerx_contacts" VALUES(289,289,'1111','','','','','','2013-08-07 05:45:59.759303','2013-08-07 05:45:59.759303');
INSERT INTO "customerx_contacts" VALUES(290,290,'1111','','','','','','2013-08-07 05:46:41.588708','2013-08-07 05:46:41.588708');
INSERT INTO "customerx_contacts" VALUES(291,291,'1111','','','','','','2013-08-07 05:47:25.392994','2013-08-07 05:47:25.392994');
INSERT INTO "customerx_contacts" VALUES(292,292,'1111','','','','','','2013-08-07 05:48:02.414049','2013-08-07 05:48:02.414049');
INSERT INTO "customerx_contacts" VALUES(293,293,'1111','','','','','','2013-08-07 05:48:42.366024','2013-08-07 05:48:42.366024');
INSERT INTO "customerx_contacts" VALUES(294,294,'1111','','','','','','2013-08-07 05:49:36.825606','2013-08-07 05:49:36.825606');
INSERT INTO "customerx_contacts" VALUES(295,295,'1111','','','','','','2013-08-07 05:50:18.200084','2013-08-07 05:50:18.200084');
INSERT INTO "customerx_contacts" VALUES(296,296,'1111','','','','','','2013-08-07 05:51:04.566132','2013-08-07 05:51:04.566132');
INSERT INTO "customerx_contacts" VALUES(297,297,'1111','','','','','','2013-08-07 05:51:51.555056','2013-08-07 05:51:51.555056');
INSERT INTO "customerx_contacts" VALUES(298,298,'1111','','','','','','2013-08-07 05:57:39.589475','2013-08-07 05:57:39.589475');
INSERT INTO "customerx_contacts" VALUES(299,299,'1111','','','','','','2013-08-07 05:58:30.691280','2013-08-07 05:58:30.691280');
INSERT INTO "customerx_contacts" VALUES(300,300,'1111','','','','','','2013-08-07 05:59:10.888639','2013-08-07 05:59:10.888639');
INSERT INTO "customerx_contacts" VALUES(301,301,'1111','','','','','','2013-08-07 07:09:58.246864','2013-08-07 07:09:58.246864');
INSERT INTO "customerx_contacts" VALUES(302,302,'1111','','','','','','2013-08-07 07:11:27.249286','2013-08-07 07:11:27.249286');
INSERT INTO "customerx_contacts" VALUES(303,303,'1111','','','','','','2013-08-07 07:49:20.099500','2013-08-07 07:49:20.099500');
INSERT INTO "customerx_contacts" VALUES(304,304,'1111','','','','','','2013-08-07 08:21:17.936725','2013-08-07 08:21:17.936725');
INSERT INTO "customerx_contacts" VALUES(305,305,'1111','','','','','','2013-08-07 08:22:13.432390','2013-08-07 08:22:13.432390');
INSERT INTO "customerx_contacts" VALUES(306,306,'1111','','','','','','2013-08-07 08:23:20.058328','2013-08-07 08:23:20.058328');
INSERT INTO "customerx_contacts" VALUES(307,307,'1111','','','','','','2013-08-07 08:24:01.461590','2013-08-07 08:24:01.461590');
INSERT INTO "customerx_contacts" VALUES(308,308,'1111','','','','','','2013-08-07 08:24:42.365789','2013-08-07 08:24:42.365789');
INSERT INTO "customerx_contacts" VALUES(309,309,'1111','','','','','','2013-08-07 08:25:27.833650','2013-08-07 08:25:27.833650');
INSERT INTO "customerx_contacts" VALUES(310,310,'1111','','','','','','2013-08-07 08:26:17.341050','2013-08-07 08:26:17.341050');
INSERT INTO "customerx_contacts" VALUES(311,311,'1111','','','','','','2013-08-07 08:27:25.029270','2013-08-07 08:27:25.029270');
INSERT INTO "customerx_contacts" VALUES(312,312,'1111','','','','','','2013-08-07 08:31:24.741876','2013-08-07 08:31:24.741876');
INSERT INTO "customerx_contacts" VALUES(313,313,'1111','','','','','','2013-08-07 08:32:12.568985','2013-08-07 08:32:12.568985');
INSERT INTO "customerx_contacts" VALUES(314,314,'1111','','','','','','2013-08-07 08:32:57.614770','2013-08-07 08:32:57.614770');
INSERT INTO "customerx_contacts" VALUES(315,315,'1111','','','','','','2013-08-07 08:33:47.649668','2013-08-07 08:33:47.649668');
INSERT INTO "customerx_contacts" VALUES(316,316,'1111','','','','','','2013-08-07 08:35:51.757413','2013-08-07 08:35:51.757413');
INSERT INTO "customerx_contacts" VALUES(317,317,'1111','','','','','','2013-08-08 00:28:32.726811','2013-08-08 00:28:32.726811');
INSERT INTO "customerx_contacts" VALUES(318,318,'1111','','','','','','2013-08-08 00:30:03.120444','2013-08-08 00:30:03.120444');
INSERT INTO "customerx_contacts" VALUES(319,319,'1111','','','','','','2013-08-08 00:30:48.479521','2013-08-08 00:30:48.479521');
INSERT INTO "customerx_contacts" VALUES(320,320,'1111','','','','','','2013-08-08 00:32:07.740986','2013-08-08 00:32:07.740986');
INSERT INTO "customerx_contacts" VALUES(321,321,'1111','','','','','','2013-08-08 00:32:50.720868','2013-08-08 00:32:50.720868');
INSERT INTO "customerx_contacts" VALUES(322,322,'1111','','','','','','2013-08-08 00:33:37.439048','2013-08-08 00:33:37.439048');
INSERT INTO "customerx_contacts" VALUES(323,323,'1111','','','','','','2013-08-08 00:35:00.071989','2013-08-08 00:35:00.071989');
INSERT INTO "customerx_contacts" VALUES(324,324,'1111','','','','','','2013-08-08 00:35:34.699909','2013-08-08 00:35:34.699909');
INSERT INTO "customerx_contacts" VALUES(325,325,'1111','','','','','','2013-08-08 00:36:11.978400','2013-08-08 00:36:11.978400');
INSERT INTO "customerx_contacts" VALUES(326,326,'1111','','','','','','2013-08-08 00:37:18.504440','2013-08-08 00:37:18.504440');
INSERT INTO "customerx_contacts" VALUES(327,327,'1111','','','','','','2013-08-08 00:38:08.591418','2013-08-08 00:38:08.591418');
INSERT INTO "customerx_contacts" VALUES(328,328,'1111','','','','','','2013-08-08 00:38:44.426391','2013-08-08 00:38:44.426391');
INSERT INTO "customerx_contacts" VALUES(329,329,'1111','','','','','','2013-08-08 00:39:20.132676','2013-08-08 00:39:20.132676');
INSERT INTO "customerx_contacts" VALUES(330,330,'1111','','','','','','2013-08-08 00:58:44.173116','2013-08-08 00:58:44.173116');
INSERT INTO "customerx_contacts" VALUES(331,331,'1111','','','','','','2013-08-08 00:59:22.888603','2013-08-08 00:59:22.888603');
INSERT INTO "customerx_contacts" VALUES(332,332,'1111','','','','','','2013-08-08 01:00:02.716447','2013-08-08 01:00:02.716447');
INSERT INTO "customerx_contacts" VALUES(333,333,'1111','','','','','','2013-08-08 01:00:46.233218','2013-08-08 01:00:46.233218');
INSERT INTO "customerx_contacts" VALUES(334,334,'1111','','','','','','2013-08-08 01:01:25.220562','2013-08-08 01:01:25.220562');
INSERT INTO "customerx_contacts" VALUES(335,335,'1111','','','','','','2013-08-08 01:02:10.269726','2013-08-08 01:02:10.269726');
INSERT INTO "customerx_contacts" VALUES(336,336,'1111','','','','','','2013-08-08 01:07:24.483619','2013-08-08 01:07:24.483619');
INSERT INTO "customerx_contacts" VALUES(337,337,'1111','','','','','','2013-08-08 01:08:06.422696','2013-08-08 01:08:06.422696');
INSERT INTO "customerx_contacts" VALUES(338,338,'1111','','','','','','2013-08-08 01:08:48.900980','2013-08-08 01:08:48.900980');
INSERT INTO "customerx_contacts" VALUES(339,339,'1111','','','','','','2013-08-08 01:09:39.660486','2013-08-08 01:09:39.660486');
INSERT INTO "customerx_contacts" VALUES(340,340,'1111','','','','','','2013-08-08 01:10:46.020093','2013-08-08 01:10:46.020093');
INSERT INTO "customerx_contacts" VALUES(341,341,'1111','','','','','','2013-08-08 01:11:26.450314','2013-08-08 01:11:26.450314');
INSERT INTO "customerx_contacts" VALUES(342,342,'1111','','','','','','2013-08-08 01:12:03.758086','2013-08-08 01:12:03.758086');
INSERT INTO "customerx_contacts" VALUES(343,343,'1111','','','','','','2013-08-08 01:12:44.950350','2013-08-08 01:12:44.950350');
INSERT INTO "customerx_contacts" VALUES(344,344,'1111','','','','','','2013-08-08 01:13:26.479614','2013-08-08 01:13:26.479614');
INSERT INTO "customerx_contacts" VALUES(345,345,'1111','','','','','','2013-08-08 01:14:06.663728','2013-08-08 01:14:06.663728');
INSERT INTO "customerx_contacts" VALUES(346,346,'1111','','','','','','2013-08-08 01:14:57.573545','2013-08-08 01:14:57.573545');
INSERT INTO "customerx_contacts" VALUES(347,347,'1111','','','','','','2013-08-08 01:15:35.627461','2013-08-08 01:15:35.627461');
INSERT INTO "customerx_contacts" VALUES(348,348,'1111','','','','','','2013-08-08 01:16:13.345651','2013-08-08 01:16:13.345651');
INSERT INTO "customerx_contacts" VALUES(349,349,'1111','','','','','','2013-08-08 02:15:32.084257','2013-08-08 02:15:32.084257');
INSERT INTO "customerx_contacts" VALUES(350,350,'1111','','','','','','2013-08-08 02:16:42.742656','2013-08-08 02:16:42.742656');
INSERT INTO "customerx_contacts" VALUES(351,351,'1111','','','','','','2013-08-08 02:17:21.725484','2013-08-08 02:17:21.725484');
INSERT INTO "customerx_contacts" VALUES(352,352,'1111','','','','','','2013-08-08 02:18:18.701636','2013-08-08 02:18:18.701636');
INSERT INTO "customerx_contacts" VALUES(353,353,'1111','','','','','','2013-08-08 02:19:10.376408','2013-08-08 02:19:10.376408');
INSERT INTO "customerx_contacts" VALUES(354,354,'1111','','','','','','2013-08-08 02:19:47.560303','2013-08-08 02:19:47.560303');
INSERT INTO "customerx_contacts" VALUES(355,355,'1111','','','','','','2013-08-08 02:20:26.085603','2013-08-08 02:20:26.085603');
INSERT INTO "customerx_contacts" VALUES(356,356,'1111','','','','','','2013-08-08 02:21:06.694365','2013-08-08 02:21:06.694365');
INSERT INTO "customerx_contacts" VALUES(357,357,'1111','','','','','','2013-08-08 02:21:46.103671','2013-08-08 02:21:46.103671');
INSERT INTO "customerx_contacts" VALUES(358,358,'1111','','','','','','2013-08-08 02:22:28.093170','2013-08-08 02:22:28.093170');
INSERT INTO "customerx_contacts" VALUES(359,359,'1111','','','','','','2013-08-08 02:23:24.998934','2013-08-08 02:23:24.998934');
INSERT INTO "customerx_contacts" VALUES(360,360,'1111','','','','','','2013-08-08 05:14:39.046468','2013-08-08 05:14:39.046468');
INSERT INTO "customerx_contacts" VALUES(361,361,'1111','','','','','','2013-08-08 05:15:16.414904','2013-08-08 05:15:16.414904');
INSERT INTO "customerx_contacts" VALUES(362,362,'1111','','','','','','2013-08-08 05:16:05.821507','2013-08-08 05:16:05.821507');
INSERT INTO "customerx_contacts" VALUES(363,363,'1111','','','','','','2013-08-08 05:16:41.161924','2013-08-08 05:16:41.161924');
INSERT INTO "customerx_contacts" VALUES(364,364,'1111','','','','','','2013-08-08 05:17:25.643730','2013-08-08 05:17:25.643730');
INSERT INTO "customerx_contacts" VALUES(365,365,'1111','','','','','','2013-08-08 05:18:05.875642','2013-08-08 05:18:05.875642');
INSERT INTO "customerx_contacts" VALUES(366,366,'1111','','','','','','2013-08-08 05:18:44.762246','2013-08-08 05:18:44.762246');
INSERT INTO "customerx_contacts" VALUES(367,367,'1111','','','','','','2013-08-08 05:19:30.276363','2013-08-08 05:19:30.276363');
INSERT INTO "customerx_contacts" VALUES(368,368,'1111','','','','','','2013-08-08 05:20:06.152121','2013-08-08 05:20:06.152121');
INSERT INTO "customerx_contacts" VALUES(369,369,'1111','','','','','','2013-08-08 05:20:45.624075','2013-08-08 05:20:45.624075');
INSERT INTO "customerx_contacts" VALUES(370,370,'1111','','','','','','2013-08-08 05:21:25.518649','2013-08-08 05:21:25.518649');
INSERT INTO "customerx_contacts" VALUES(371,371,'1111','','','','','','2013-08-08 05:22:06.895819','2013-08-08 05:22:06.895819');
INSERT INTO "customerx_contacts" VALUES(372,372,'1111','','','','','','2013-08-08 05:22:44.341651','2013-08-08 05:22:44.341651');
INSERT INTO "customerx_contacts" VALUES(373,373,'1111','','','','','','2013-08-08 05:23:31.371133','2013-08-08 05:23:31.371133');
INSERT INTO "customerx_contacts" VALUES(374,374,'1111','','','','','','2013-08-08 05:24:12.513997','2013-08-08 05:24:12.513997');
INSERT INTO "customerx_contacts" VALUES(375,375,'1111','','','','','','2013-08-08 05:24:51.128376','2013-08-08 05:24:51.128376');
INSERT INTO "customerx_contacts" VALUES(376,376,'1111','','','','','','2013-08-08 05:25:34.104268','2013-08-08 05:25:34.104268');
INSERT INTO "customerx_contacts" VALUES(377,377,'1111','','','','','','2013-08-08 05:26:06.468807','2013-08-08 05:26:06.468807');
INSERT INTO "customerx_contacts" VALUES(378,378,'1111','','','','','','2013-08-08 05:26:50.677448','2013-08-08 05:26:50.677448');
INSERT INTO "customerx_contacts" VALUES(379,379,'1111','','','','','','2013-08-08 05:27:26.090476','2013-08-08 05:27:26.090476');
INSERT INTO "customerx_contacts" VALUES(380,380,'1111','','','','','','2013-08-08 05:28:02.254036','2013-08-08 05:28:02.254036');
INSERT INTO "customerx_contacts" VALUES(381,381,'1111','','','','','','2013-08-08 05:28:37.247404','2013-08-08 05:28:37.247404');
INSERT INTO "customerx_contacts" VALUES(382,382,'1111','','','','','','2013-08-08 05:29:12.068316','2013-08-08 05:29:12.068316');
INSERT INTO "customerx_contacts" VALUES(383,383,'1111','','','','','','2013-08-08 05:29:46.004834','2013-08-08 05:29:46.004834');
INSERT INTO "customerx_contacts" VALUES(384,384,'1111','','','','','','2013-08-08 05:30:18.690936','2013-08-08 05:30:18.690936');
INSERT INTO "customerx_contacts" VALUES(385,385,'1111','','','','','','2013-08-08 05:30:59.086957','2013-08-08 05:30:59.086957');
INSERT INTO "customerx_contacts" VALUES(386,386,'1111','','','','','','2013-08-08 05:31:50.886236','2013-08-08 05:31:50.886236');
INSERT INTO "customerx_contacts" VALUES(387,387,'1111','','','','','','2013-08-08 05:32:30.683592','2013-08-08 05:32:30.683592');
INSERT INTO "customerx_contacts" VALUES(388,388,'1111','','','','','','2013-08-08 05:33:04.871963','2013-08-08 05:33:04.871963');
INSERT INTO "customerx_contacts" VALUES(389,389,'1111','','','','','','2013-08-08 05:33:43.891363','2013-08-08 05:33:43.891363');
INSERT INTO "customerx_contacts" VALUES(390,390,'1111','','','','','','2013-08-08 05:34:16.055903','2013-08-08 05:34:16.055903');
INSERT INTO "customerx_contacts" VALUES(391,391,'1111','','','','','','2013-08-08 05:34:52.424158','2013-08-08 05:34:52.424158');
INSERT INTO "customerx_contacts" VALUES(392,392,'1111','','','','','','2013-08-08 05:35:24.752186','2013-08-08 05:35:24.752186');
INSERT INTO "customerx_contacts" VALUES(393,393,'1111','','','','','','2013-08-08 05:36:01.112642','2013-08-08 05:36:01.112642');
INSERT INTO "customerx_contacts" VALUES(394,394,'1111','','','','','','2013-08-08 05:36:37.575281','2013-08-08 05:36:37.575281');
INSERT INTO "customerx_contacts" VALUES(395,395,'1111','','','','','','2013-08-08 05:37:38.211672','2013-08-08 05:37:38.211672');
INSERT INTO "customerx_contacts" VALUES(396,396,'1111','','','','','','2013-08-08 05:38:10.473865','2013-08-08 05:38:10.473865');
INSERT INTO "customerx_contacts" VALUES(397,397,'1111','','','','','','2013-08-08 05:38:44.803207','2013-08-08 05:38:44.803207');
INSERT INTO "customerx_contacts" VALUES(398,398,'1111','','','','','','2013-08-08 05:39:25.314777','2013-08-08 05:39:25.314777');
INSERT INTO "customerx_contacts" VALUES(399,399,'1111','','','','','','2013-08-08 05:40:03.324524','2013-08-08 05:40:03.324524');
INSERT INTO "customerx_contacts" VALUES(400,400,'1111','','','','','','2013-08-08 05:40:41.763120','2013-08-08 05:40:41.763120');
INSERT INTO "customerx_contacts" VALUES(401,401,'1111','','','','','','2013-08-08 06:26:15.377857','2013-08-08 06:26:15.377857');
INSERT INTO "customerx_contacts" VALUES(402,402,'1111','','','','','','2013-08-08 06:27:08.708492','2013-08-08 06:27:08.708492');
INSERT INTO "customerx_contacts" VALUES(403,403,'1111','','','','','','2013-08-08 06:28:35.545526','2013-08-08 06:28:35.545526');
INSERT INTO "customerx_contacts" VALUES(404,404,'1111','','','','','','2013-08-08 06:48:02.376040','2013-08-08 06:48:02.376040');
INSERT INTO "customerx_contacts" VALUES(405,405,'1111','','','','','','2013-08-08 06:48:49.814093','2013-08-08 06:48:49.814093');
INSERT INTO "customerx_contacts" VALUES(406,406,'1111','','','','','','2013-08-08 06:49:51.745702','2013-08-08 06:49:51.745702');
INSERT INTO "customerx_contacts" VALUES(407,407,'1111','','','','','','2013-08-08 06:51:58.783839','2013-08-08 06:51:58.783839');
INSERT INTO "customerx_contacts" VALUES(408,408,'1111','','','','','','2013-08-08 06:58:49.650282','2013-08-08 06:58:49.650282');
INSERT INTO "customerx_contacts" VALUES(409,409,'1111','','','','','','2013-08-08 07:22:42.858883','2013-08-08 07:22:42.858883');
INSERT INTO "customerx_contacts" VALUES(410,410,'1111','','','','','','2013-08-08 07:24:34.496669','2013-08-08 07:24:34.496669');
INSERT INTO "customerx_contacts" VALUES(411,411,'1111','','','','','','2013-08-08 07:25:20.757141','2013-08-08 07:25:20.757141');
INSERT INTO "customerx_contacts" VALUES(412,412,'1111','','','','','','2013-08-08 07:26:38.735735','2013-08-08 07:26:38.735735');
INSERT INTO "customerx_contacts" VALUES(413,413,'1111','','','','','','2013-08-08 07:27:34.308857','2013-08-08 07:27:34.308857');
INSERT INTO "customerx_contacts" VALUES(414,414,'1111','','','','','','2013-08-08 07:29:44.640711','2013-08-08 07:29:44.640711');
INSERT INTO "customerx_contacts" VALUES(415,415,'1111','','','','','','2013-08-08 07:30:41.201970','2013-08-08 07:30:41.201970');
INSERT INTO "customerx_contacts" VALUES(416,416,'1111','','','','','','2013-08-08 07:31:40.717458','2013-08-08 07:31:40.717458');
INSERT INTO "customerx_contacts" VALUES(417,417,'1111','','','','','','2013-08-08 07:32:25.018574','2013-08-08 07:32:25.018574');
INSERT INTO "customerx_contacts" VALUES(418,418,'1111','','','','','','2013-08-08 07:33:02.101108','2013-08-08 07:33:02.101108');
INSERT INTO "customerx_contacts" VALUES(419,419,'1111','','','','','','2013-08-08 07:33:50.277564','2013-08-08 07:33:50.277564');
INSERT INTO "customerx_contacts" VALUES(420,420,'1111','','','','','','2013-08-08 07:34:35.863773','2013-08-08 07:34:35.863773');
INSERT INTO "customerx_contacts" VALUES(421,421,'1111','','','','','','2013-08-09 00:56:54.856035','2013-08-09 00:56:54.856035');
INSERT INTO "customerx_contacts" VALUES(422,422,'1111','','','','','','2013-08-09 00:58:39.709922','2013-08-09 00:58:39.709922');
INSERT INTO "customerx_contacts" VALUES(423,423,'1111','','','','','','2013-08-09 00:59:53.889886','2013-08-09 00:59:53.889886');
INSERT INTO "customerx_contacts" VALUES(424,424,'1111','','','','','','2013-08-09 01:01:21.946064','2013-08-09 01:01:21.946064');
INSERT INTO "customerx_contacts" VALUES(425,425,'1111','','','','','','2013-08-09 01:02:25.616779','2013-08-09 01:02:25.616779');
INSERT INTO "customerx_contacts" VALUES(426,426,'1111','','','','','','2013-08-09 01:03:01.785108','2013-08-09 01:03:01.785108');
INSERT INTO "customerx_contacts" VALUES(427,427,'1111','','','','','','2013-08-09 01:04:22.345631','2013-08-09 01:04:22.345631');
INSERT INTO "customerx_contacts" VALUES(428,428,'1111','','','','','','2013-08-09 01:05:33.308293','2013-08-09 01:05:33.308293');
INSERT INTO "customerx_contacts" VALUES(429,429,'1111','','','','','','2013-08-09 01:06:24.795497','2013-08-09 01:06:24.795497');
INSERT INTO "customerx_contacts" VALUES(430,430,'1111','','','','','','2013-08-09 01:07:01.224585','2013-08-09 01:07:01.224585');
INSERT INTO "customerx_contacts" VALUES(431,431,'1111','','','','','','2013-08-09 01:08:00.444178','2013-08-09 01:08:00.444178');
INSERT INTO "customerx_contacts" VALUES(432,432,'1111','','','','','','2013-08-09 01:09:23.643131','2013-08-09 01:09:23.643131');
INSERT INTO "customerx_contacts" VALUES(433,433,'1111','','','','','','2013-08-09 01:10:19.394829','2013-08-09 01:10:19.394829');
INSERT INTO "customerx_contacts" VALUES(434,434,'1111','','','','','','2013-08-09 01:16:24.665668','2013-08-09 01:16:24.665668');
INSERT INTO "customerx_contacts" VALUES(435,435,'1111','','','','','','2013-08-09 01:17:01.629532','2013-08-09 01:17:01.629532');
INSERT INTO "customerx_contacts" VALUES(436,436,'1111','','','','','','2013-08-09 01:17:49.538240','2013-08-09 01:17:49.538240');
INSERT INTO "customerx_contacts" VALUES(437,437,'1111','','','','','','2013-08-09 01:19:02.809702','2013-08-09 01:19:02.809702');
INSERT INTO "customerx_contacts" VALUES(438,438,'1111','','','','','','2013-08-09 01:20:25.962325','2013-08-09 01:20:25.962325');
INSERT INTO "customerx_contacts" VALUES(439,439,'1111','','','','','','2013-08-09 01:21:35.415970','2013-08-09 01:21:35.415970');
INSERT INTO "customerx_contacts" VALUES(440,440,'1111','','','','','','2013-08-09 01:22:43.219394','2013-08-09 01:22:43.219394');
INSERT INTO "customerx_contacts" VALUES(441,441,'1111','','','','','','2013-08-09 01:24:02.932684','2013-08-09 01:24:02.932684');
INSERT INTO "customerx_contacts" VALUES(442,442,'1111','','','','','','2013-08-09 01:25:18.848644','2013-08-09 01:25:18.848644');
INSERT INTO "customerx_contacts" VALUES(443,443,'1111','','','','','','2013-08-09 01:30:47.161450','2013-08-09 01:30:47.161450');
INSERT INTO "customerx_contacts" VALUES(444,444,'1111','','','','','','2013-08-09 01:31:57.183420','2013-08-09 01:31:57.183420');
INSERT INTO "customerx_contacts" VALUES(445,445,'1111','','','','','','2013-08-09 01:32:47.045811','2013-08-09 01:32:47.045811');
INSERT INTO "customerx_contacts" VALUES(446,446,'1111','','','','','','2013-08-09 01:33:26.439439','2013-08-09 01:33:26.439439');
INSERT INTO "customerx_contacts" VALUES(447,447,'1111','','','','','','2013-08-09 01:56:48.172511','2013-08-09 01:56:48.172511');
INSERT INTO "customerx_contacts" VALUES(448,448,'1111','','','','','','2013-08-09 01:58:02.792973','2013-08-09 01:58:02.792973');
INSERT INTO "customerx_contacts" VALUES(449,449,'1111','','','','','','2013-08-09 01:58:44.385269','2013-08-09 01:58:44.385269');
INSERT INTO "customerx_contacts" VALUES(450,450,'1111','','','','','','2013-08-09 01:59:27.352260','2013-08-09 01:59:27.352260');
INSERT INTO "customerx_contacts" VALUES(451,451,'1111','','','','','','2013-08-09 02:00:48.962937','2013-08-09 02:00:48.962937');
INSERT INTO "customerx_contacts" VALUES(452,452,'1111','','','','','','2013-08-09 02:01:26.544451','2013-08-09 02:01:26.544451');
INSERT INTO "customerx_contacts" VALUES(453,453,'1111','','','','','','2013-08-09 02:03:14.655707','2013-08-09 02:03:14.655707');
INSERT INTO "customerx_contacts" VALUES(454,454,'1111','','','','','','2013-08-09 02:03:56.687217','2013-08-09 02:03:56.687217');
INSERT INTO "customerx_contacts" VALUES(455,455,'1111','','','','','','2013-08-09 02:04:41.595021','2013-08-09 02:04:41.595021');
INSERT INTO "customerx_contacts" VALUES(456,456,'1111','','','','','','2013-08-09 02:05:49.237522','2013-08-09 02:05:49.237522');
INSERT INTO "customerx_contacts" VALUES(457,457,'1111','','','','','','2013-08-09 02:08:18.842315','2013-08-09 02:08:18.842315');
INSERT INTO "customerx_contacts" VALUES(458,458,'1111','','','','','','2013-08-09 02:08:46.650863','2013-08-09 02:08:46.650863');
INSERT INTO "customerx_contacts" VALUES(459,459,'1111','','','','','','2013-08-09 02:09:12.779287','2013-08-09 02:09:12.779287');
INSERT INTO "customerx_contacts" VALUES(460,460,'1111','','','','','','2013-08-09 02:09:56.435672','2013-08-09 02:09:56.435672');
INSERT INTO "customerx_contacts" VALUES(461,461,'1111','','','','','','2013-08-09 02:11:08.583830','2013-08-09 02:11:08.583830');
INSERT INTO "customerx_contacts" VALUES(462,462,'1111','','','','','','2013-08-09 02:13:28.466615','2013-08-09 02:13:28.466615');
INSERT INTO "customerx_contacts" VALUES(463,463,'1111','','','','','','2013-08-09 02:16:11.693133','2013-08-09 02:16:11.693133');
INSERT INTO "customerx_contacts" VALUES(464,464,'1111','','','','','','2013-08-09 02:18:05.253183','2013-08-09 02:18:05.253183');
INSERT INTO "customerx_contacts" VALUES(465,465,'1111','','','','','','2013-08-09 02:18:50.452239','2013-08-09 02:18:50.452239');
INSERT INTO "customerx_contacts" VALUES(466,466,'1111','','','','','','2013-08-09 02:19:35.785480','2013-08-09 02:19:35.785480');
INSERT INTO "customerx_contacts" VALUES(467,467,'1111','','','','','','2013-08-09 02:20:21.720244','2013-08-09 02:20:21.720244');
INSERT INTO "customerx_contacts" VALUES(468,468,'1111','','','','','','2013-08-09 02:21:57.838001','2013-08-09 02:21:57.838001');
INSERT INTO "customerx_contacts" VALUES(469,469,'1111','','','','','','2013-08-09 02:22:59.141975','2013-08-09 02:22:59.141975');
INSERT INTO "customerx_contacts" VALUES(470,470,'1111','','','','','','2013-08-09 02:24:12.839314','2013-08-09 02:24:12.839314');
INSERT INTO "customerx_contacts" VALUES(471,471,'1111','','','','','','2013-08-09 02:25:41.488269','2013-08-09 02:25:41.488269');
INSERT INTO "customerx_contacts" VALUES(472,472,'1111','','','','','','2013-08-09 02:41:21.946584','2013-08-09 02:41:21.946584');
INSERT INTO "customerx_contacts" VALUES(473,473,'1111','','','','','','2013-08-09 02:45:00.047802','2013-08-09 02:45:00.047802');
INSERT INTO "customerx_contacts" VALUES(474,474,'1111','','','','','','2013-08-09 05:18:40.412625','2013-08-09 05:18:40.412625');
INSERT INTO "customerx_contacts" VALUES(475,475,'1111','','','','','','2013-08-09 05:19:24.681136','2013-08-09 05:19:24.681136');
INSERT INTO "customerx_contacts" VALUES(476,476,'1111','','','','','','2013-08-09 05:20:06.062366','2013-08-09 05:20:06.062366');
INSERT INTO "customerx_contacts" VALUES(477,477,'1111','','','','','','2013-08-09 05:20:52.708264','2013-08-09 05:20:52.708264');
INSERT INTO "customerx_contacts" VALUES(478,478,'1111','','','','','','2013-08-09 05:21:31.238654','2013-08-09 05:21:31.238654');
INSERT INTO "customerx_contacts" VALUES(479,479,'1111','','','','','','2013-08-09 05:22:09.396424','2013-08-09 05:22:09.396424');
INSERT INTO "customerx_contacts" VALUES(480,480,'1111','','','','','','2013-08-09 05:22:49.922070','2013-08-09 05:22:49.922070');
INSERT INTO "customerx_contacts" VALUES(481,481,'1111','','','','','','2013-08-09 05:23:25.607461','2013-08-09 05:23:25.607461');
INSERT INTO "customerx_contacts" VALUES(482,482,'1111','','','','','','2013-08-09 05:23:59.544357','2013-08-09 05:23:59.544357');
INSERT INTO "customerx_contacts" VALUES(483,483,'1111','','','','','','2013-08-09 05:24:44.499765','2013-08-09 05:24:44.499765');
INSERT INTO "customerx_contacts" VALUES(484,484,'1111','','','','','','2013-08-09 05:25:33.216959','2013-08-09 05:25:33.216959');
INSERT INTO "customerx_contacts" VALUES(485,485,'1111','','','','','','2013-08-09 05:27:18.181881','2013-08-09 05:27:18.181881');
INSERT INTO "customerx_contacts" VALUES(486,486,'1111','','','','','','2013-08-09 05:27:57.870743','2013-08-09 05:27:57.870743');
INSERT INTO "customerx_contacts" VALUES(487,487,'1111','','','','','','2013-08-09 05:28:40.546933','2013-08-09 05:28:40.546933');
INSERT INTO "customerx_contacts" VALUES(488,488,'1111','','','','','','2013-08-09 05:35:38.206872','2013-08-09 05:35:38.206872');
INSERT INTO "customerx_contacts" VALUES(489,489,'1111','','','','','','2013-08-09 05:39:44.536731','2013-08-09 05:39:44.536731');
INSERT INTO "customerx_contacts" VALUES(490,490,'1111','','','','','','2013-08-09 05:40:36.175040','2013-08-09 05:40:36.175040');
INSERT INTO "customerx_contacts" VALUES(491,491,'1111','','','','','','2013-08-09 05:41:32.294342','2013-08-09 05:41:32.294342');
INSERT INTO "customerx_contacts" VALUES(492,492,'1111','','','','','','2013-08-09 05:43:01.005463','2013-08-09 05:43:01.005463');
INSERT INTO "customerx_contacts" VALUES(493,493,'1111','','','','','','2013-08-09 05:44:24.064930','2013-08-09 05:44:24.064930');
INSERT INTO "customerx_contacts" VALUES(494,494,'1111','','','','','','2013-08-09 05:45:41.169617','2013-08-09 05:45:41.169617');
INSERT INTO "customerx_contacts" VALUES(495,495,'1111','','','','','','2013-08-09 05:46:20.532523','2013-08-09 05:46:20.532523');
INSERT INTO "customerx_contacts" VALUES(496,496,'1111','','','','','','2013-08-09 05:48:27.240079','2013-08-09 05:48:27.240079');
INSERT INTO "customerx_contacts" VALUES(497,497,'1111','','','','','','2013-08-09 05:59:32.769368','2013-08-09 05:59:32.769368');
INSERT INTO "customerx_contacts" VALUES(498,498,'1111','','','','','','2013-08-09 06:00:31.585759','2013-08-09 06:00:31.585759');
INSERT INTO "customerx_contacts" VALUES(499,499,'1111','','','','','','2013-08-09 06:02:35.287311','2013-08-09 06:02:35.287311');
INSERT INTO "customerx_contacts" VALUES(500,500,'1111','','','','','','2013-08-09 06:05:15.399275','2013-08-09 06:05:15.399275');
INSERT INTO "customerx_contacts" VALUES(501,501,'1111','','','','','','2013-08-09 06:10:33.232890','2013-08-09 06:10:33.232890');
INSERT INTO "customerx_contacts" VALUES(502,502,'1111','','','','','','2013-08-09 06:13:07.107173','2013-08-09 06:13:07.107173');
INSERT INTO "customerx_contacts" VALUES(503,503,'1111','','','','','','2013-08-09 06:16:23.676970','2013-08-09 06:16:23.676970');
INSERT INTO "customerx_contacts" VALUES(504,504,'1111','','','','','','2013-08-09 06:19:42.100164','2013-08-09 06:19:42.100164');
INSERT INTO "customerx_contacts" VALUES(505,505,'1111','','','','','','2013-08-09 06:21:22.901560','2013-08-09 06:21:22.901560');
INSERT INTO "customerx_contacts" VALUES(506,506,'1111','','','','','','2013-08-09 06:23:22.387222','2013-08-09 06:23:22.387222');
INSERT INTO "customerx_contacts" VALUES(507,507,'1111','','','','','','2013-08-09 06:25:26.074853','2013-08-09 06:25:26.074853');
INSERT INTO "customerx_contacts" VALUES(508,508,'1111','','','','','','2013-08-09 06:27:08.303000','2013-08-09 06:27:08.303000');
INSERT INTO "customerx_contacts" VALUES(509,509,'1111','','','','','','2013-08-09 06:27:49.656731','2013-08-09 06:27:49.656731');
INSERT INTO "customerx_contacts" VALUES(510,510,'1111','','','','','','2013-08-09 06:28:45.655627','2013-08-09 06:28:45.655627');
INSERT INTO "customerx_contacts" VALUES(511,511,'1111','','','','','','2013-08-09 06:29:46.945101','2013-08-09 06:29:46.945101');
INSERT INTO "customerx_contacts" VALUES(512,512,'1111','','','','','','2013-08-09 06:31:00.989283','2013-08-09 06:31:00.989283');
INSERT INTO "customerx_contacts" VALUES(513,513,'1111','','','','','','2013-08-09 06:32:20.723748','2013-08-09 06:32:20.723748');
INSERT INTO "customerx_contacts" VALUES(514,514,'1111','','','','','','2013-08-09 06:33:18.976740','2013-08-09 06:33:18.976740');
INSERT INTO "customerx_contacts" VALUES(515,515,'1111','','','','','','2013-08-09 06:34:13.377657','2013-08-09 06:34:13.377657');
INSERT INTO "customerx_contacts" VALUES(516,516,'1111','','','','','','2013-08-12 00:45:45.366624','2013-08-12 00:45:45.366624');
INSERT INTO "customerx_contacts" VALUES(517,517,'1111','','','','','','2013-08-12 00:49:22.677700','2013-08-12 00:49:22.677700');
INSERT INTO "customerx_contacts" VALUES(518,518,'1111','','','','','','2013-08-12 00:55:15.042902','2013-08-12 00:55:15.042902');
INSERT INTO "customerx_contacts" VALUES(519,519,'1111','','','','','','2013-08-12 00:55:52.856304','2013-08-12 00:55:52.856304');
INSERT INTO "customerx_contacts" VALUES(520,520,'1111','','','','','','2013-08-12 00:57:04.456479','2013-08-12 00:57:04.456479');
INSERT INTO "customerx_contacts" VALUES(521,521,'1111','','','','','','2013-08-12 00:57:50.027584','2013-08-12 00:57:50.027584');
INSERT INTO "customerx_contacts" VALUES(522,522,'1111','','','','','','2013-08-12 00:59:41.164583','2013-08-12 00:59:41.164583');
INSERT INTO "customerx_contacts" VALUES(523,523,'1111','','','','','','2013-08-12 01:00:26.532578','2013-08-12 01:00:26.532578');
INSERT INTO "customerx_contacts" VALUES(524,524,'1111','','','','','','2013-08-12 01:02:06.875229','2013-08-12 01:02:06.875229');
INSERT INTO "customerx_contacts" VALUES(525,525,'1111','','','','','','2013-08-12 01:03:27.806627','2013-08-12 01:03:27.806627');
INSERT INTO "customerx_contacts" VALUES(526,526,'1111','','','','','','2013-08-12 01:04:23.466747','2013-08-12 01:04:23.466747');
INSERT INTO "customerx_contacts" VALUES(527,527,'1111','','','','','','2013-08-12 01:05:11.921652','2013-08-12 01:05:11.921652');
INSERT INTO "customerx_contacts" VALUES(528,528,'1111','','','','','','2013-08-12 01:06:59.276712','2013-08-12 01:06:59.276712');
INSERT INTO "customerx_contacts" VALUES(529,529,'1111','','','','','','2013-08-12 01:08:49.574467','2013-08-12 01:08:49.574467');
INSERT INTO "customerx_contacts" VALUES(530,530,'1111','','','','','','2013-08-12 01:17:26.077069','2013-08-12 01:17:26.077069');
INSERT INTO "customerx_contacts" VALUES(531,531,'1111','','','','','','2013-08-12 01:18:37.894912','2013-08-12 01:18:37.894912');
INSERT INTO "customerx_contacts" VALUES(532,532,'1111','','','','','','2013-08-12 05:39:18.296190','2013-08-12 05:39:18.296190');
INSERT INTO "customerx_contacts" VALUES(533,533,'1111','','','','','','2013-08-12 05:40:22.025745','2013-08-12 05:40:22.025745');
INSERT INTO "customerx_contacts" VALUES(534,534,'1111','','','','','','2013-08-12 05:41:33.714407','2013-08-12 05:41:33.714407');
INSERT INTO "customerx_contacts" VALUES(535,535,'1111','','','','','','2013-08-12 05:42:50.035826','2013-08-12 05:42:50.035826');
INSERT INTO "customerx_contacts" VALUES(536,536,'1111','','','','','','2013-08-12 05:43:55.497411','2013-08-12 05:43:55.497411');
INSERT INTO "customerx_contacts" VALUES(537,537,'1111','','','','','','2013-08-12 05:46:26.149376','2013-08-12 05:46:26.149376');
INSERT INTO "customerx_contacts" VALUES(538,538,'1111','','','','','','2013-08-12 05:48:00.889101','2013-08-12 05:48:00.889101');
INSERT INTO "customerx_contacts" VALUES(539,539,'1111','','','','','','2013-08-12 05:49:34.361791','2013-08-12 05:49:34.361791');
INSERT INTO "customerx_contacts" VALUES(540,540,'1111','','','','','','2013-08-12 05:50:40.907504','2013-08-12 05:50:40.907504');
INSERT INTO "customerx_contacts" VALUES(541,541,'1111','','','','','','2013-08-12 05:56:07.170571','2013-08-12 05:56:07.170571');
INSERT INTO "customerx_contacts" VALUES(542,542,'1111','','','','','','2013-08-12 05:57:19.533269','2013-08-12 05:57:19.533269');
INSERT INTO "customerx_contacts" VALUES(543,543,'1111','','','','','','2013-08-12 05:58:38.638234','2013-08-12 05:58:38.638234');
INSERT INTO "customerx_contacts" VALUES(544,544,'1111','','','','','','2013-08-12 06:03:06.677182','2013-08-12 06:03:06.677182');
INSERT INTO "customerx_contacts" VALUES(545,545,'1111','','','','','','2013-08-12 06:03:47.839194','2013-08-12 06:03:47.839194');
INSERT INTO "customerx_contacts" VALUES(546,546,'1111','','','','','','2013-08-12 06:04:34.816092','2013-08-12 06:04:34.816092');
INSERT INTO "customerx_contacts" VALUES(547,547,'1111','','','','','','2013-08-12 06:05:42.387252','2013-08-12 06:05:42.387252');
INSERT INTO "customerx_contacts" VALUES(548,548,'1111','','','','','','2013-08-12 06:06:52.258094','2013-08-12 06:06:52.258094');
INSERT INTO "customerx_contacts" VALUES(549,549,'1111','','','','','','2013-08-12 06:09:27.577918','2013-08-12 06:09:27.577918');
INSERT INTO "customerx_contacts" VALUES(550,550,'1111','','','','','','2013-08-12 06:11:41.501315','2013-08-12 06:11:41.501315');
INSERT INTO "customerx_contacts" VALUES(551,551,'1111','','','','','','2013-08-12 06:14:02.592330','2013-08-12 06:14:02.592330');
INSERT INTO "customerx_contacts" VALUES(552,552,'1111','','','','','','2013-08-12 06:15:30.892081','2013-08-12 06:15:30.892081');
INSERT INTO "customerx_contacts" VALUES(553,553,'1111','','','','','','2013-08-12 06:17:37.147534','2013-08-12 06:17:37.147534');
INSERT INTO "customerx_contacts" VALUES(554,554,'1111','','','','','','2013-08-12 06:27:02.467914','2013-08-12 06:27:02.467914');
INSERT INTO "customerx_contacts" VALUES(555,555,'1111','','','','','','2013-08-12 06:28:04.633673','2013-08-12 06:28:04.633673');
INSERT INTO "customerx_contacts" VALUES(556,556,'1111','','','','','','2013-08-12 06:29:48.855215','2013-08-12 06:29:48.855215');
INSERT INTO "customerx_contacts" VALUES(557,557,'1111','','','','','','2013-08-12 06:30:33.944450','2013-08-12 06:30:33.944450');
INSERT INTO "customerx_contacts" VALUES(558,558,'1111','','','','','','2013-08-12 06:31:40.977793','2013-08-12 06:31:40.977793');
INSERT INTO "customerx_contacts" VALUES(559,559,'1111','','','','','','2013-08-12 06:32:29.784689','2013-08-12 06:32:29.784689');
INSERT INTO "customerx_contacts" VALUES(560,560,'1111','','','','','','2013-08-12 06:33:22.012258','2013-08-12 06:33:22.012258');
INSERT INTO "customerx_contacts" VALUES(561,561,'1111','','','','','','2013-08-12 06:35:01.068177','2013-08-12 06:35:01.068177');
INSERT INTO "customerx_contacts" VALUES(562,562,'1111','','','','','','2013-08-12 06:36:17.754506','2013-08-12 06:36:17.754506');
INSERT INTO "customerx_contacts" VALUES(563,563,'1111','','','','','','2013-08-12 06:37:11.021174','2013-08-12 06:37:11.021174');
INSERT INTO "customerx_contacts" VALUES(564,564,'1111','','','','','','2013-08-12 06:38:21.786207','2013-08-12 06:38:21.786207');
INSERT INTO "customerx_contacts" VALUES(565,565,'1111','','','','','','2013-08-12 06:39:44.876621','2013-08-12 06:39:44.876621');
INSERT INTO "customerx_contacts" VALUES(566,566,'1111','','','','','','2013-08-12 06:40:41.479203','2013-08-12 06:40:41.479203');
INSERT INTO "customerx_contacts" VALUES(567,567,'1111','','','','','','2013-08-12 06:42:42.611581','2013-08-12 06:42:42.611581');
INSERT INTO "customerx_contacts" VALUES(568,568,'1111','','','','','','2013-08-12 06:43:55.755444','2013-08-12 06:43:55.755444');
INSERT INTO "customerx_contacts" VALUES(569,569,'1111','','','','','','2013-08-12 06:46:15.461961','2013-08-12 06:46:15.461961');
INSERT INTO "customerx_contacts" VALUES(570,570,'1111','','','','','','2013-08-12 06:47:02.248547','2013-08-12 06:47:02.248547');
INSERT INTO "customerx_contacts" VALUES(571,571,'1111','','','','','','2013-08-12 06:48:23.086402','2013-08-12 06:48:23.086402');
INSERT INTO "customerx_contacts" VALUES(572,572,'1111','','','','','','2013-08-12 06:49:51.998099','2013-08-12 06:49:51.998099');
INSERT INTO "customerx_contacts" VALUES(573,573,'1111','','','','','','2013-08-12 06:50:38.460041','2013-08-12 06:50:38.460041');
INSERT INTO "customerx_contacts" VALUES(574,574,'1111','','','','','','2013-08-12 06:51:30.709892','2013-08-12 06:51:30.709892');
INSERT INTO "customerx_contacts" VALUES(575,575,'1111','','','','','','2013-08-12 06:52:20.855212','2013-08-12 06:52:20.855212');
INSERT INTO "customerx_contacts" VALUES(576,576,'1111','','','','','','2013-08-12 06:53:02.475814','2013-08-12 06:53:02.475814');
INSERT INTO "customerx_contacts" VALUES(577,577,'1111','','','','','','2013-08-12 06:54:20.413335','2013-08-12 06:54:20.413335');
INSERT INTO "customerx_contacts" VALUES(578,578,'1111','','','','','','2013-08-12 06:55:21.357694','2013-08-12 06:55:21.357694');
INSERT INTO "customerx_contacts" VALUES(579,579,'1111','','','','','','2013-08-12 06:56:04.283673','2013-08-12 06:56:04.283673');
INSERT INTO "customerx_contacts" VALUES(580,580,'1111','','','','','','2013-08-12 06:57:23.576014','2013-08-12 06:57:23.576014');
INSERT INTO "customerx_contacts" VALUES(581,581,'1111','','','','','','2013-08-12 06:58:27.166334','2013-08-12 06:58:27.166334');
INSERT INTO "customerx_contacts" VALUES(582,582,'1111','','','','','','2013-08-12 06:59:14.331032','2013-08-12 06:59:14.331032');
INSERT INTO "customerx_contacts" VALUES(583,583,'1111','','','','','','2013-08-12 07:00:05.661770','2013-08-12 07:00:05.661770');
INSERT INTO "customerx_contacts" VALUES(584,584,'1111','','','','','','2013-08-12 07:01:00.143258','2013-08-12 07:01:00.143258');
INSERT INTO "customerx_contacts" VALUES(585,585,'1111','','','','','','2013-08-12 07:01:38.673991','2013-08-12 07:01:38.673991');
INSERT INTO "customerx_contacts" VALUES(586,586,'1111','','','','','','2013-08-12 07:02:36.618915','2013-08-12 07:02:36.618915');
INSERT INTO "customerx_contacts" VALUES(587,587,'1111','','','','','','2013-08-12 07:04:10.762311','2013-08-12 07:04:10.762311');
INSERT INTO "customerx_contacts" VALUES(588,588,'1111','','','','','','2013-08-12 07:05:03.621048','2013-08-12 07:05:03.621048');
INSERT INTO "customerx_contacts" VALUES(589,589,'1111','','','','','','2013-08-12 07:06:17.010757','2013-08-12 07:06:17.010757');
INSERT INTO "customerx_contacts" VALUES(590,590,'1111','','','','','','2013-08-12 07:07:13.379421','2013-08-12 07:07:13.379421');
INSERT INTO "customerx_contacts" VALUES(591,591,'1111','','','','','','2013-08-12 07:08:01.627592','2013-08-12 07:08:01.627592');
INSERT INTO "customerx_contacts" VALUES(592,592,'1111','','','','','','2013-08-12 07:08:48.005363','2013-08-12 07:08:48.005363');
INSERT INTO "customerx_contacts" VALUES(593,593,'1111','','','','','','2013-08-12 07:09:25.150926','2013-08-12 07:09:25.150926');
INSERT INTO "customerx_contacts" VALUES(594,594,'1111.','','','','','','2013-08-12 07:09:58.641135','2013-09-12 19:48:36.810978');
INSERT INTO "customerx_contacts" VALUES(595,595,'1111','','','','','','2013-08-12 07:10:38.679462','2013-08-12 07:10:38.679462');
INSERT INTO "customerx_contacts" VALUES(596,596,'1111','','','','','','2013-08-12 07:11:25.510802','2013-08-12 07:11:25.510802');
INSERT INTO "customerx_contacts" VALUES(597,597,'1111','','','','','','2013-08-12 07:12:23.067989','2013-08-12 07:12:23.067989');
INSERT INTO "customerx_contacts" VALUES(598,598,'1111','','','','','','2013-08-12 07:13:09.010123','2013-08-12 07:13:09.010123');
INSERT INTO "customerx_contacts" VALUES(599,599,'1111','','','','','','2013-08-12 07:13:51.045525','2013-08-12 07:13:51.045525');
INSERT INTO "customerx_contacts" VALUES(600,600,'1111','','','','','','2013-08-12 07:15:14.004779','2013-08-12 07:15:14.004779');
INSERT INTO "customerx_contacts" VALUES(601,601,'1111','','','','','','2013-08-12 07:15:51.208229','2013-08-12 07:15:51.208229');
INSERT INTO "customerx_contacts" VALUES(602,602,'1111','','','','','','2013-08-12 07:16:49.056721','2013-08-12 07:16:49.056721');
INSERT INTO "customerx_contacts" VALUES(603,603,'1111','','','','','','2013-08-12 07:17:54.679551','2013-08-12 07:17:54.679551');
INSERT INTO "customerx_contacts" VALUES(604,604,'1111','','','','','','2013-08-12 07:18:43.206361','2013-08-12 07:18:43.206361');
INSERT INTO "customerx_contacts" VALUES(605,605,'1111','','','','','','2013-08-12 07:19:51.780813','2013-08-12 07:19:51.780813');
INSERT INTO "customerx_contacts" VALUES(606,606,'1111','','','','','','2013-08-12 07:20:36.784342','2013-08-12 07:20:36.784342');
INSERT INTO "customerx_contacts" VALUES(607,607,'1111','','','','','','2013-08-12 07:22:13.427570','2013-08-12 07:22:13.427570');
INSERT INTO "customerx_contacts" VALUES(608,608,'1111','','','','','','2013-08-12 07:23:25.808708','2013-08-12 07:23:25.808708');
INSERT INTO "customerx_contacts" VALUES(609,609,'1111','','','','','','2013-08-12 07:24:11.637813','2013-08-12 07:24:11.637813');
INSERT INTO "customerx_contacts" VALUES(610,610,'1111','','','','','','2013-08-12 07:25:40.070515','2013-08-12 07:25:40.070515');
INSERT INTO "customerx_contacts" VALUES(611,611,'1111','','','','','','2013-08-12 07:26:53.071185','2013-08-12 07:26:53.071185');
INSERT INTO "customerx_contacts" VALUES(612,612,'1111','','','','','','2013-08-12 07:27:43.837942','2013-08-12 07:27:43.837942');
INSERT INTO "customerx_contacts" VALUES(613,613,'1111','','','','','','2013-08-12 07:29:16.044550','2013-08-12 07:29:16.044550');
INSERT INTO "customerx_contacts" VALUES(614,614,'1111','','','','','','2013-08-12 07:30:15.375790','2013-08-12 07:30:15.375790');
INSERT INTO "customerx_contacts" VALUES(615,615,'1111','','','','','','2013-08-12 07:31:21.126789','2013-08-12 07:31:21.126789');
INSERT INTO "customerx_contacts" VALUES(616,616,'1111','','','','','','2013-08-12 07:31:58.975722','2013-08-12 07:31:58.975722');
DROP TABLE IF EXISTS "customerx_customer_comm_records";
CREATE TABLE "customerx_customer_comm_records" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "customer_id" integer, "via" varchar(255), "subject" varchar(255), "contact_info" text, "content" text, "last_updated_by_id" integer, "comm_category_id" integer, "reported_by_id" integer, "comm_date" date, "void" boolean DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "customerx_customer_comm_records" VALUES(1,266,'会面','特首他','phone','testtee',4,2,4,'2013-09-13','f','2013-09-12 19:13:13.886542','2013-09-12 19:13:13.886542');
INSERT INTO "customerx_customer_comm_records" VALUES(2,616,'会面','test','a phone.','test',4,2,4,'2013-09-12','f','2013-09-12 19:43:01.785306','2013-09-12 19:45:25.750704');
DROP TABLE IF EXISTS "customerx_customers";
CREATE TABLE "customerx_customers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "short_name" varchar(255), "since_date" date, "shipping_instruction" text, "zone_id" integer, "customer_status_category_id" integer, "phone" varchar(255), "fax" varchar(255), "sales_id" integer, "active" boolean DEFAULT 't', "last_updated_by_id" integer, "quality_system_id" integer, "employee_num" varchar(255), "revenue" varchar(255), "customer_eval" text, "main_biz" text, "customer_taste" text, "note" text, "web" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "customerx_customers" VALUES(1,'宁波华研节能环保安全设计研究有限公司','宁波华研','2013-04-01','',1,3,'86867392','86867393',2,'t',2,NULL,'','','','','','','','2013-06-03 15:18:30.877687','2013-06-10 05:19:33.841994');
INSERT INTO "customerx_customers" VALUES(2,'宁海华跃节能环保智控技术有限公司','宁海华跃','2010-03-12','',7,4,'65580098','65580098',4,'t',2,NULL,'','','','','','','','2013-06-10 05:19:17.888016','2013-06-10 05:19:17.888016');
INSERT INTO "customerx_customers" VALUES(3,'余姚聚源节能环保技术有限公司','余姚聚源','2008-06-02','',6,4,'62726910','62726915',4,'t',2,NULL,'','','','','','','','2013-06-10 05:21:11.538735','2013-06-10 05:21:11.538735');
INSERT INTO "customerx_customers" VALUES(4,'宁波禾顺新材料有限公司','禾顺新材料','2013-07-01','',1,4,'0574-88348888','0574-88494788',27,'t',2,NULL,'','','','','','','','2013-07-05 07:01:57.923273','2013-07-05 07:01:57.923273');
INSERT INTO "customerx_customers" VALUES(5,'宁波金丰电子有限公司','金丰电子','2013-07-01','',1,3,'0574-28836058','0574-88345777',27,'t',2,NULL,'','','','','','','','2013-07-05 07:32:32.490216','2013-07-05 07:32:32.490216');
INSERT INTO "customerx_customers" VALUES(6,'宁波金球机电铸造有限公司','金球机电铸造','2013-07-01','',1,3,'0574-88473100','0574-88473300',27,'t',2,NULL,'','','','','','','','2013-07-05 07:48:52.519611','2013-07-05 07:48:52.519611');
INSERT INTO "customerx_customers" VALUES(7,'宁波宏祥汽车配件有限公司','宏祥汽车配件','2013-07-01','',1,3,'0574-88493886    88494038   88493996   88493916 ','0574-88493188',27,'t',2,NULL,'','','','','','','','2013-07-05 07:51:03.231108','2013-07-05 07:51:03.231108');
INSERT INTO "customerx_customers" VALUES(8,'宁波北仑宇创机械工业有限公司','宇创机械','2013-07-01','',1,9,'86-574-86227710  86227736','86-574-86227993',4,'t',2,NULL,'','','','','','','','2013-07-05 08:15:10.567905','2013-07-05 08:15:10.567905');
INSERT INTO "customerx_customers" VALUES(9,'宁波海伦钢琴股份有限公司','海伦钢琴','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:52:19.731497','2013-08-05 07:52:30.845099');
INSERT INTO "customerx_customers" VALUES(10,'华利保模具（宁波）有限公司','华利保模具','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:53:45.505265','2013-08-05 07:53:45.505265');
INSERT INTO "customerx_customers" VALUES(11,'宁波台塑工业园发包中心','台塑关系企业','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:55:45.082117','2013-08-05 07:55:45.082117');
INSERT INTO "customerx_customers" VALUES(12,'宁波东昊汽车部件有限公司','东昊汽车部件','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:56:42.818215','2013-08-05 07:56:42.818215');
INSERT INTO "customerx_customers" VALUES(13,'宁波维科敦煌针织有限公司','维科敦煌针织','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:57:29.273388','2013-08-05 07:57:29.273388');
INSERT INTO "customerx_customers" VALUES(14,'宁波勋辉电器有限公司','勋辉电器','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:58:03.501846','2013-08-05 07:58:03.501846');
INSERT INTO "customerx_customers" VALUES(15,'宁波维科精华集团股份有限公司特阔家纺分公司','维科特阔家纺','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:58:43.528162','2013-08-05 07:58:43.528162');
INSERT INTO "customerx_customers" VALUES(16,'宁波新海龙钢管有限公司','新海龙钢管','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 07:59:21.655502','2013-08-05 07:59:21.655502');
INSERT INTO "customerx_customers" VALUES(17,'宁波金欧五金制品有限公司','金欧五金制品','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:00:00.653799','2013-08-05 08:00:00.653799');
INSERT INTO "customerx_customers" VALUES(18,'宁波力劲科技有限公司','力劲科技','2013-01-01','',1,11,'1111','1111',7,'t',2,NULL,'','','','','','','','2013-08-05 08:00:35.190978','2013-08-05 08:00:42.019479');
INSERT INTO "customerx_customers" VALUES(19,'宁波高林银箭机电有限公司','高林银箭机电','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:01:33.920178','2013-08-05 08:01:33.920178');
INSERT INTO "customerx_customers" VALUES(20,'宁波电工合金材料有限公司','宁波电工合金','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:02:14.299216','2013-08-05 08:02:14.299216');
INSERT INTO "customerx_customers" VALUES(21,'盖尔太平洋特种纺织品（宁波）有限公司','盖尔太平洋','2013-01-01','',1,11,'1111','1111',7,'t',2,NULL,'','','','','','','','2013-08-05 08:02:54.987055','2013-08-05 08:02:54.987055');
INSERT INTO "customerx_customers" VALUES(22,'海天塑机集团有限公司','海天集团','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:03:36.543446','2013-08-05 08:03:36.543446');
INSERT INTO "customerx_customers" VALUES(23,'宁波青峙化工码头有限公司','青峙化工码头','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:04:09.385721','2013-08-05 08:04:09.385721');
INSERT INTO "customerx_customers" VALUES(24,'宁波西田信染织有限公司','西田信','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:04:41.472416','2013-08-05 08:04:41.472416');
INSERT INTO "customerx_customers" VALUES(25,'宁波永祥铸造有限公司','永祥铸造','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:05:14.657257','2013-08-05 08:05:14.657257');
INSERT INTO "customerx_customers" VALUES(26,'宁波市北仑华艺精密铸造有限公司','华艺精密铸造','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:05:50.195169','2013-08-05 08:05:50.195169');
INSERT INTO "customerx_customers" VALUES(27,'宁波市北仑双盛精工钣焊厂（普通合伙）','北仑双盛精工','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:06:26.136302','2013-08-05 08:06:26.136302');
INSERT INTO "customerx_customers" VALUES(28,'宁波广天赛克思精密铸造有限公司','广天赛克思','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:06:58.944782','2013-08-05 08:06:58.944782');
INSERT INTO "customerx_customers" VALUES(29,'宁波欣威交通设备制造有限公司','欣威交通设备','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:07:34.383050','2013-08-05 08:08:18.524277');
INSERT INTO "customerx_customers" VALUES(30,'宁波市北仑甬薪缸套厂','甬薪缸套','2013-01-01','',1,17,'1111','1111',7,'t',2,NULL,'','','','','','','','2013-08-05 08:08:10.867948','2013-08-05 08:08:24.216813');
INSERT INTO "customerx_customers" VALUES(31,'宁波北仑豪光金属机械有限公司','豪光金属机械','2013-02-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:09:00.576236','2013-08-05 08:09:00.576236');
INSERT INTO "customerx_customers" VALUES(32,'宁波佳乐精密制品有限公司','佳乐精密制品','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:09:36.641689','2013-08-05 08:09:36.641689');
INSERT INTO "customerx_customers" VALUES(33,'宁波市北仑柴桥凯达缸套厂','凯达缸套','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:10:16.111736','2013-08-05 08:10:16.111736');
INSERT INTO "customerx_customers" VALUES(34,'宁波汉圣化工有限公司','汉圣化工','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:11:07.238525','2013-08-05 08:11:07.238525');
INSERT INTO "customerx_customers" VALUES(35,'宁波亚乐克汽车部件有限公司','亚乐克汽车','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:11:41.700214','2013-08-05 08:11:41.700214');
INSERT INTO "customerx_customers" VALUES(36,'宁波仕达实业有限公司','仕达实业','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:12:26.678222','2013-08-05 08:12:26.678222');
INSERT INTO "customerx_customers" VALUES(37,'宁波铜艺金属制品有限公司','铜艺金属制品','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:12:57.400205','2013-08-05 08:12:57.400205');
INSERT INTO "customerx_customers" VALUES(38,'宁波三生药业有限公司','三生药业','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:13:26.746381','2013-08-05 08:13:26.746381');
INSERT INTO "customerx_customers" VALUES(39,'宁波四季瑞丽酒店有限公司','四季瑞丽酒店','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:13:56.351690','2013-08-05 08:13:56.351690');
INSERT INTO "customerx_customers" VALUES(40,'宁波宇东金属箱柜有限公司','宇东金属箱柜','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:14:28.258908','2013-08-05 08:14:28.258908');
INSERT INTO "customerx_customers" VALUES(41,'宁波刚发实业有限公司','刚发实业','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:15:01.073853','2013-08-05 08:15:01.073853');
INSERT INTO "customerx_customers" VALUES(42,'宁波市昊宇包装制品有限公司','昊宇包装制品','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:15:30.954508','2013-08-05 08:15:30.954508');
INSERT INTO "customerx_customers" VALUES(43,'宁波新甬印务实业有限公司','新甬印务实业','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:16:21.718962','2013-08-05 08:16:21.718962');
INSERT INTO "customerx_customers" VALUES(44,'宁波一凯电子有限公司','一凯电子','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:18:39.233415','2013-08-05 08:18:39.233415');
INSERT INTO "customerx_customers" VALUES(45,'宁波市鄞州通达制冷机械有限公司','通达制冷机械','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:19:18.627841','2013-08-05 08:19:18.627841');
INSERT INTO "customerx_customers" VALUES(46,'宁波市鄞州鹏程精密铸造厂','鹏程精密铸造','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:19:51.234724','2013-08-05 08:19:51.234724');
INSERT INTO "customerx_customers" VALUES(47,'宁波圣妮纺织品有限公司','圣妮纺织','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:40:27.239745','2013-08-05 08:40:27.239745');
INSERT INTO "customerx_customers" VALUES(48,'宁波宇环机械设备有限公司','宇环机械','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:42:44.500485','2013-08-05 08:42:44.500485');
INSERT INTO "customerx_customers" VALUES(49,'宁波乐德士电器有限公司','乐德士电器','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:43:58.123104','2013-08-05 08:43:58.123104');
INSERT INTO "customerx_customers" VALUES(50,'宁波雄豪机械有限公司','雄豪机械','2013-01-01','',1,12,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:45:06.180180','2013-08-05 08:45:06.180180');
INSERT INTO "customerx_customers" VALUES(51,'宁波市鄞州飞达精密铸造厂','飞达精密','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:46:49.970480','2013-08-05 08:46:49.970480');
INSERT INTO "customerx_customers" VALUES(52,'宁波浙东精密铸造有限公司','浙东精密铸造','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:47:41.701407','2013-08-05 08:47:41.701407');
INSERT INTO "customerx_customers" VALUES(53,'宁波市鄞州洞桥兴财金属成材厂','洞桥兴财','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:48:39.236563','2013-08-05 08:48:39.236563');
INSERT INTO "customerx_customers" VALUES(54,'宁波市鄞州区集士港鑫发铸件厂','集士港鑫发','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:50:48.030102','2013-08-05 08:50:48.030102');
INSERT INTO "customerx_customers" VALUES(55,'宁波泰茂机械铸造有限公司','泰茂机械','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:52:02.694605','2013-08-05 08:52:02.694605');
INSERT INTO "customerx_customers" VALUES(56,'宁波万信铸造有限公司','万信铸造','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:53:00.810085','2013-08-05 08:53:00.810085');
INSERT INTO "customerx_customers" VALUES(57,'宁波市鄞州华南精密铸造有限公司','华南精密铸造','2013-01-01','',1,17,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:53:50.539957','2013-08-05 08:53:50.539957');
INSERT INTO "customerx_customers" VALUES(58,'宁波汤姆指机械工业有限公司','汤姆指机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:54:57.150150','2013-08-05 08:54:57.150150');
INSERT INTO "customerx_customers" VALUES(59,'宁波天衡制药有限公司','天衡制药','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-05 08:56:07.774506','2013-08-05 08:56:07.774506');
INSERT INTO "customerx_customers" VALUES(60,'浙江大丰实业有限公司','大丰实业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:22:47.220946','2013-08-06 00:22:47.220946');
INSERT INTO "customerx_customers" VALUES(61,'浙江大丰体育','大丰体育','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:23:48.901464','2013-08-06 00:23:48.901464');
INSERT INTO "customerx_customers" VALUES(62,'宁波正庄铝塑有限公司','正庄铝塑','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:24:43.352063','2013-08-06 00:24:43.352063');
INSERT INTO "customerx_customers" VALUES(63,'浙江明峰水泥有限公司','明峰水泥','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:25:29.353646','2013-08-06 00:25:29.353646');
INSERT INTO "customerx_customers" VALUES(64,'宁波奥凯安全科技有限公司','奥凯安全科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:26:21.924405','2013-08-06 00:26:21.924405');
INSERT INTO "customerx_customers" VALUES(65,'宁波齐心电子有限公司','齐心电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:27:24.735699','2013-08-06 00:27:24.735699');
INSERT INTO "customerx_customers" VALUES(66,'宁波宏武管业有限公司','宏武管业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:28:32.083377','2013-08-06 00:28:32.083377');
INSERT INTO "customerx_customers" VALUES(67,'宁波贝儿格婴儿用品制造有限公司','贝儿格婴儿用品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:34:40.579135','2013-08-06 00:34:40.579135');
INSERT INTO "customerx_customers" VALUES(68,'宁波超超安全阀制造有限公司','超超安全阀','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:35:44.436385','2013-08-06 00:35:44.436385');
INSERT INTO "customerx_customers" VALUES(69,'慈溪市华威电器有限公司','华威电器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:36:29.234150','2013-08-06 00:36:29.234150');
INSERT INTO "customerx_customers" VALUES(70,'慈溪市江南化纤有限公司','江南化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:37:15.368241','2013-08-06 00:37:15.368241');
INSERT INTO "customerx_customers" VALUES(71,'宁波福兰特厨具有限公司','福兰特厨具','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:38:06.291135','2013-08-06 00:38:06.291135');
INSERT INTO "customerx_customers" VALUES(72,'宁波大华锁业发展有限公司','大华锁业','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:38:55.060112','2013-08-06 00:38:55.060112');
INSERT INTO "customerx_customers" VALUES(73,'宁波飞乐锁具有限公司','飞乐锁具','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:40:23.273599','2013-08-06 00:40:23.273599');
INSERT INTO "customerx_customers" VALUES(74,'宁波万佳电器有限公司','万佳电器','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:41:08.027952','2013-08-06 00:41:08.027952');
INSERT INTO "customerx_customers" VALUES(75,'慈溪市清兴合金材料有限公司','清兴合金','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:41:49.345379','2013-08-06 00:41:49.345379');
INSERT INTO "customerx_customers" VALUES(76,'慈溪市逍林电子仪表机箱厂','逍林电子','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:42:32.606437','2013-08-06 00:42:32.606437');
INSERT INTO "customerx_customers" VALUES(77,'慈溪市光华铝氧化厂','光华','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:43:31.907443','2013-08-06 00:43:31.907443');
INSERT INTO "customerx_customers" VALUES(78,'慈溪市亚太化纤线业有限公司','亚太化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:44:11.683730','2013-08-06 00:44:11.683730');
INSERT INTO "customerx_customers" VALUES(79,'宁波市安信汽车零部件有限公司','安信汽车零部件','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:44:52.120235','2013-08-06 00:44:52.120235');
INSERT INTO "customerx_customers" VALUES(80,'宁波联纺化纤有限公司','联纺化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:45:29.319708','2013-08-06 00:45:29.319708');
INSERT INTO "customerx_customers" VALUES(81,'慈溪市新兴化纤有限公司','新兴化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:47:21.567948','2013-08-06 00:47:21.567948');
INSERT INTO "customerx_customers" VALUES(82,'宁波新纶化纤有限公司','新纶化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:48:23.878855','2013-08-06 00:48:23.878855');
INSERT INTO "customerx_customers" VALUES(83,'宁波卓成化纤有限公司','卓成化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:49:08.833497','2013-08-06 00:49:08.833497');
INSERT INTO "customerx_customers" VALUES(84,'宁波大众化纤实业有限公司','大众化纤','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:49:46.488556','2013-08-06 00:49:46.488556');
INSERT INTO "customerx_customers" VALUES(85,'慈溪市三江化学有限公司','三江化学','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:50:24.796336','2013-08-06 00:50:24.796336');
INSERT INTO "customerx_customers" VALUES(86,'宁波富宇塑料工业有限公司','富宇塑料','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 00:51:00.796079','2013-08-06 00:51:00.796079');
INSERT INTO "customerx_customers" VALUES(87,'宁波市嘉乐电器有限公司','嘉乐电器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:01:24.156924','2013-08-06 01:01:24.156924');
INSERT INTO "customerx_customers" VALUES(88,'宁波海虹散热器有限公司','海虹散热器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:02:11.014302','2013-08-06 01:02:11.014302');
INSERT INTO "customerx_customers" VALUES(89,'慈溪市欧博特电子有限公司','欧博特电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:02:51.635664','2013-08-06 01:02:51.635664');
INSERT INTO "customerx_customers" VALUES(90,'慈溪市勤丰机械有限公司','勤丰机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:03:33.782247','2013-08-06 01:03:33.782247');
INSERT INTO "customerx_customers" VALUES(91,'杭州潜阳科技有限公司','潜阳科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:04:18.996414','2013-08-06 01:04:18.996414');
INSERT INTO "customerx_customers" VALUES(92,'杭州樱花线业有限公司','樱花线业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:05:06.842280','2013-08-06 01:05:06.842280');
INSERT INTO "customerx_customers" VALUES(93,'宁波市北仑电镀厂','北仑电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:06:53.250857','2013-08-06 01:06:53.250857');
INSERT INTO "customerx_customers" VALUES(94,'宁波市北仑电镀电器厂','北仑电镀电器','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:07:47.632625','2013-08-06 01:07:47.632625');
INSERT INTO "customerx_customers" VALUES(95,'宁波市北仑区新碶电镀厂','新碶电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:08:50.332036','2013-08-06 01:08:50.332036');
INSERT INTO "customerx_customers" VALUES(96,'宁波市北仑区新矸永新电镀厂','新矸永新电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:09:37.086897','2013-08-06 01:09:37.086897');
INSERT INTO "customerx_customers" VALUES(97,'宁波市北仑海泰电镀厂','北仑海泰电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:10:26.553020','2013-08-06 01:10:26.553020');
INSERT INTO "customerx_customers" VALUES(98,'宁波市华天电镀有限公司','华天电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:11:17.088515','2013-08-06 01:11:17.088515');
INSERT INTO "customerx_customers" VALUES(99,'宁波卓新通讯接插件有限公司','卓新通讯接插件','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:12:30.136793','2013-08-06 01:12:30.136793');
INSERT INTO "customerx_customers" VALUES(100,'宁波凯达轴瓦有限公司','凯达轴瓦','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:13:12.854373','2013-08-06 01:13:12.854373');
INSERT INTO "customerx_customers" VALUES(101,'宁波市北仑区白峰电镀厂','北仑区白峰电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:14:08.065216','2013-08-06 01:14:08.065216');
INSERT INTO "customerx_customers" VALUES(102,'宁波科宁达日丰磁材有限公司','科宁达日丰','2012-01-01','',1,11,'1111','111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:14:55.915919','2013-08-06 01:14:55.915919');
INSERT INTO "customerx_customers" VALUES(103,'宁波韩华磁电有限公司','韩华磁电','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:15:38.546637','2013-08-06 01:15:38.546637');
INSERT INTO "customerx_customers" VALUES(104,'宁波力和机电工业有限公司','力和机电','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:16:25.409701','2013-08-06 01:16:25.409701');
INSERT INTO "customerx_customers" VALUES(105,'宁波将军机械有限公司','将军机械','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:17:07.355572','2013-08-06 01:17:07.355572');
INSERT INTO "customerx_customers" VALUES(106,'宁波天星精密机械有限公司','天星精密机械','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:17:47.109513','2013-08-06 01:17:47.109513');
INSERT INTO "customerx_customers" VALUES(107,'宁波埃斯科光电有限公司','埃斯科光电','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:18:33.186472','2013-08-06 01:18:33.186472');
INSERT INTO "customerx_customers" VALUES(108,'宁波拓普集团股份有限公司','拓普集团','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:19:31.819129','2013-08-06 01:19:31.819129');
INSERT INTO "customerx_customers" VALUES(109,'宁波麦芽有限公司','麦芽','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:22:47.541518','2013-08-06 01:22:47.541518');
INSERT INTO "customerx_customers" VALUES(110,'宁波阿拉酿酒有限公司','阿拉酿酒','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:23:32.821272','2013-08-06 01:23:32.821272');
INSERT INTO "customerx_customers" VALUES(111,'宁波北仑岩东排水有限公司','岩东排水','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:24:17.621363','2013-08-06 01:24:17.621363');
INSERT INTO "customerx_customers" VALUES(112,'宁波海天精工机械有限公司','海天精工','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:25:08.012354','2013-08-06 01:25:08.012354');
INSERT INTO "customerx_customers" VALUES(113,'宁波飞龙印铁容器有限公司','飞龙印铁容器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:25:55.091000','2013-08-06 01:25:55.091000');
INSERT INTO "customerx_customers" VALUES(114,'宁波盛丰纺织有限公司','盛丰纺织','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:26:33.611978','2013-08-06 01:26:33.611978');
INSERT INTO "customerx_customers" VALUES(115,'宁波侨泰纺织有限公司','侨泰纺织','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:27:43.385666','2013-08-06 01:27:43.385666');
INSERT INTO "customerx_customers" VALUES(116,'宁波侨泰兴纺织有限公司','侨泰兴纺织','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:28:24.832092','2013-08-06 01:28:24.832092');
INSERT INTO "customerx_customers" VALUES(117,'宁波信泰机械有限公司','信泰机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:29:14.041386','2013-08-06 01:29:14.041386');
INSERT INTO "customerx_customers" VALUES(118,'宁波亚沛斯化学科技有限公司','亚沛斯化学','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:29:57.441103','2013-08-06 01:29:57.441103');
INSERT INTO "customerx_customers" VALUES(119,'宁波佳乐精制品有限公司','佳乐精制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:34:37.629102','2013-08-06 01:34:37.629102');
INSERT INTO "customerx_customers" VALUES(120,'宁波市银宇织造有限公司','银宇织造','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:35:29.385393','2013-08-06 01:35:29.385393');
INSERT INTO "customerx_customers" VALUES(121,'宁波兆龙纺织品有限公司','兆龙纺织品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:36:12.615033','2013-08-06 01:36:12.615033');
INSERT INTO "customerx_customers" VALUES(122,'宁波锦伟标准件有限公司','锦伟标准件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:36:53.179103','2013-08-06 01:36:53.179103');
INSERT INTO "customerx_customers" VALUES(123,'宁波永发集团有限公司','永发集团','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:37:37.046756','2013-08-06 01:37:37.046756');
INSERT INTO "customerx_customers" VALUES(124,'宁波理工监测科技股份有限公司','理工监测科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:38:19.931998','2013-08-06 01:38:19.931998');
INSERT INTO "customerx_customers" VALUES(125,'宁波开元大洒店有限公司分公司','开元大洒店','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:39:07.460023','2013-08-06 01:39:07.460023');
INSERT INTO "customerx_customers" VALUES(126,'宁波沪甬电力器材股份有限公司','沪甬电力器材','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:39:50.473235','2013-08-06 01:39:50.473235');
INSERT INTO "customerx_customers" VALUES(127,'宁波高发汽车控制系统股份有限公司','高发汽车','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:40:37.915050','2013-08-06 01:40:37.915050');
INSERT INTO "customerx_customers" VALUES(128,'宁波美康生物科技股份有限公司','美康生物科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:41:21.903420','2013-08-06 01:41:21.903420');
INSERT INTO "customerx_customers" VALUES(129,'宁波美康盛德医学检验所有限公司','美康盛德医学检验所','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:42:06.161609','2013-08-06 01:42:06.161609');
INSERT INTO "customerx_customers" VALUES(130,'宁波东浩铸业有限公司','东浩铸业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:42:49.842104','2013-08-06 01:42:49.842104');
INSERT INTO "customerx_customers" VALUES(131,'宁波博威合金材料股份有限公司','博威合金','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:43:29.300084','2013-08-06 01:43:29.300084');
INSERT INTO "customerx_customers" VALUES(132,'宁波汉浦工具有限公司','汉浦工具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:44:10.885688','2013-08-06 01:44:10.885688');
INSERT INTO "customerx_customers" VALUES(133,'宁波培源电器制造有限公司','培源电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:44:48.278780','2013-08-06 01:44:48.278780');
INSERT INTO "customerx_customers" VALUES(134,'宁波贝科浩渤特殊紧固件制造有限公司','贝科浩渤','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:45:31.776715','2013-08-06 01:45:31.776715');
INSERT INTO "customerx_customers" VALUES(135,'英科特（宁波）机电设备有限公司','英科特','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:46:18.326712','2013-08-06 01:46:18.326712');
INSERT INTO "customerx_customers" VALUES(136,'宁波市鑫晟工贸实业有限公司','鑫晟工贸','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:46:53.435973','2013-08-06 01:46:53.435973');
INSERT INTO "customerx_customers" VALUES(137,'宁波杉杉尤利卡太阳能科技发展有限公司','杉杉尤利卡','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:47:51.366908','2013-08-06 01:47:51.366908');
INSERT INTO "customerx_customers" VALUES(138,'宁波忻杰燃气用具实业有限公司','忻杰燃气','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:48:30.646194','2013-08-06 01:48:30.646194');
INSERT INTO "customerx_customers" VALUES(139,'宁波市鄞州全红电镀厂（普通合伙）','全红电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:49:17.541801','2013-08-06 01:49:17.541801');
INSERT INTO "customerx_customers" VALUES(140,'宁波市鄞州华一电镀厂','华一电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:49:56.062488','2013-08-06 01:49:56.062488');
INSERT INTO "customerx_customers" VALUES(141,'宁波博威麦特莱科技有限公司','博威麦特莱','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:50:34.561983','2013-08-06 01:50:34.561983');
INSERT INTO "customerx_customers" VALUES(142,'宁波康强电子股份有限公司','康强电子','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:51:16.041223','2013-08-06 01:51:16.041223');
INSERT INTO "customerx_customers" VALUES(143,'宁波宝艺金珠饰品有限公司','宝艺金珠饰品','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:51:55.053321','2013-08-06 01:51:55.053321');
INSERT INTO "customerx_customers" VALUES(144,'宁波市鄞州杰达电子链条厂','杰达电子','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:52:52.158331','2013-08-06 01:52:52.158331');
INSERT INTO "customerx_customers" VALUES(145,'宁波市鄞州鄞江杰杰电镀有限公司','鄞江杰杰电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:53:35.912905','2013-08-06 01:53:35.912905');
INSERT INTO "customerx_customers" VALUES(146,'宁波市鄞州华鑫仪器有限公司','华鑫仪器','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:54:30.092872','2013-08-06 01:54:30.092872');
INSERT INTO "customerx_customers" VALUES(147,'宁波华辉医用器械有限公司','华辉医用器械','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:55:17.015821','2013-08-06 01:55:17.015821');
INSERT INTO "customerx_customers" VALUES(148,'宁波市鄞州华合玻璃仪表有限公司','华合玻璃仪表','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:56:07.401406','2013-08-06 01:56:07.401406');
INSERT INTO "customerx_customers" VALUES(149,'宁波市鄞州三友水处理运营有限公司','三友水处理运营','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:56:45.439211','2013-08-06 01:56:45.439211');
INSERT INTO "customerx_customers" VALUES(150,'宁波天虹文具有限公司','天虹文具','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:57:35.597655','2013-08-06 01:57:35.597655');
INSERT INTO "customerx_customers" VALUES(151,'宁波市奇精机械有限公司','奇精机械','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:58:13.181575','2013-08-06 01:58:13.181575');
INSERT INTO "customerx_customers" VALUES(152,'宁波捷光表面涂装有限公司','捷光表面涂装','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:58:53.848212','2013-08-06 01:58:53.848212');
INSERT INTO "customerx_customers" VALUES(153,'宁波添也汽车部件有限公司','添也汽车部件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 01:59:32.229887','2013-08-06 01:59:32.229887');
INSERT INTO "customerx_customers" VALUES(154,'宁波市锦泰橡塑有限公司','锦泰橡塑','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:00:10.640727','2013-08-06 02:00:10.640727');
INSERT INTO "customerx_customers" VALUES(155,'宁波和鑫光电科技有限公司','和鑫光电','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:00:49.277384','2013-08-06 02:00:49.277384');
INSERT INTO "customerx_customers" VALUES(156,'宁波瑶琳养生科技有限公司','瑶琳养生','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:01:47.204989','2013-08-06 02:01:47.204989');
INSERT INTO "customerx_customers" VALUES(157,'宁海县佳发轴承有限公司','佳发轴承','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:02:35.507685','2013-08-06 02:02:35.507685');
INSERT INTO "customerx_customers" VALUES(158,'宁波万信纺织有限公司','万信纺织','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:04:00.049040','2013-08-06 02:04:00.049040');
INSERT INTO "customerx_customers" VALUES(159,'浙江滕头园林股份有限公司','滕头园林','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:05:10.143023','2013-08-06 02:05:10.143023');
INSERT INTO "customerx_customers" VALUES(160,'余姚市宏达电子材料厂','宏达电子','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:05:49.846166','2013-08-06 02:05:49.846166');
INSERT INTO "customerx_customers" VALUES(161,'余姚市低塘镇电镀厂','低塘镇电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:06:36.732682','2013-08-06 02:06:36.732682');
INSERT INTO "customerx_customers" VALUES(162,'宁波凯驰胶带有限公司','凯驰胶带','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:07:14.637070','2013-08-06 02:07:14.637070');
INSERT INTO "customerx_customers" VALUES(163,'宁波长振铜业有限公司','长振铜业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:08:04.662547','2013-08-06 02:08:04.662547');
INSERT INTO "customerx_customers" VALUES(164,'宁波海亚特滚子有限公司','海亚特滚子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:08:43.169898','2013-08-06 02:08:43.169898');
INSERT INTO "customerx_customers" VALUES(165,'宁波科环新型建材股份有限公司','科环新型建材','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:09:32.165350','2013-08-06 02:09:32.165350');
INSERT INTO "customerx_customers" VALUES(166,'宁波丰茂远东橡胶有限公司','丰茂远东','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:10:39.106258','2013-08-06 02:10:39.106258');
INSERT INTO "customerx_customers" VALUES(167,'宁波巨发电器有限公司','巨发电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:11:28.866809','2013-08-06 02:11:28.866809');
INSERT INTO "customerx_customers" VALUES(168,'宁波万德工具实业有限公司','万德工具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:12:08.332955','2013-08-06 02:12:08.332955');
INSERT INTO "customerx_customers" VALUES(169,'宁波捷成染整有限公司','捷成染整','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:12:46.675938','2013-08-06 02:12:46.675938');
INSERT INTO "customerx_customers" VALUES(170,'宁波通驰实业有限公司','通驰实业','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:16:14.992741','2013-08-06 02:17:33.132112');
INSERT INTO "customerx_customers" VALUES(171,'宁波泉岱五金工具有限公司','泉岱五金','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:17:00.049081','2013-08-06 02:17:42.563999');
INSERT INTO "customerx_customers" VALUES(172,'宁波展慈金属工业有限公司','展慈金属','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:18:32.946247','2013-08-06 02:18:32.946247');
INSERT INTO "customerx_customers" VALUES(173,'慈溪市观城镇电镀厂','观城镇电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:19:34.141286','2013-08-06 02:19:34.141286');
INSERT INTO "customerx_customers" VALUES(174,'慈溪新皇冠金属制品厂有限公司','新皇冠金属','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:20:17.755089','2013-08-06 02:20:17.755089');
INSERT INTO "customerx_customers" VALUES(175,'慈溪市逍林新兴电镀厂','逍林新兴','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:20:54.547910','2013-08-06 02:20:54.547910');
INSERT INTO "customerx_customers" VALUES(176,'慈溪市东方电镀有限公司','东方电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:21:37.030913','2013-08-06 02:21:37.030913');
INSERT INTO "customerx_customers" VALUES(177,'慈溪市拆落电镀有限公司','拆落电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 02:22:25.977628','2013-08-06 02:22:25.977628');
INSERT INTO "customerx_customers" VALUES(178,'慈溪市坎墩电镀厂（普通合伙）','坎墩电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:09:06.100425','2013-08-06 05:09:06.100425');
INSERT INTO "customerx_customers" VALUES(179,'慈溪市广乐工贸有限公司','广乐工贸','2012-01-08','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:09:59.984395','2013-08-06 05:09:59.984395');
INSERT INTO "customerx_customers" VALUES(180,'慈溪市兴安电镀有限公司','兴安电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:10:42.124961','2013-08-06 05:10:42.124961');
INSERT INTO "customerx_customers" VALUES(181,'浙江三国精密机电有限公司','三国精密机电','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:11:37.290572','2013-08-06 05:11:37.290572');
INSERT INTO "customerx_customers" VALUES(182,'慈溪金龙无线电厂','金龙无线','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:12:15.355438','2013-08-06 05:12:15.355438');
INSERT INTO "customerx_customers" VALUES(183,'宁波四维尔工业有限股份有限公司','四维尔工业','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:12:58.306556','2013-08-06 05:12:58.306556');
INSERT INTO "customerx_customers" VALUES(184,'宁波邦盛汽车零部件有限公司','邦盛汽车零部件','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:13:39.886259','2013-08-06 05:13:39.886259');
INSERT INTO "customerx_customers" VALUES(185,'宁波中骏上原汽车零部件有限公司','中骏上原','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:14:25.706851','2013-08-06 05:14:25.706851');
INSERT INTO "customerx_customers" VALUES(186,'慈溪市金太阳模具有限公司','金太阳模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:15:10.459653','2013-08-06 05:15:10.459653');
INSERT INTO "customerx_customers" VALUES(187,'宁波达能电器有限公司','达能电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:15:50.372771','2013-08-06 05:15:50.372771');
INSERT INTO "customerx_customers" VALUES(188,'慈溪宁利包装材料有限公司','宁利包装','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:16:55.723715','2013-08-06 05:16:55.723715');
INSERT INTO "customerx_customers" VALUES(189,'宁波森特化纤有限公司','森特化纤','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:17:35.857133','2013-08-06 05:17:35.857133');
INSERT INTO "customerx_customers" VALUES(190,'宁波高松电子有限公司','高松电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:18:26.982384','2013-08-06 05:18:26.982384');
INSERT INTO "customerx_customers" VALUES(191,'宁波东星电子有限公司','东星电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:19:24.172368','2013-08-06 05:19:24.172368');
INSERT INTO "customerx_customers" VALUES(192,'宁波神马集团有限公司','神马集团','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:20:07.730448','2013-08-06 05:20:07.730448');
INSERT INTO "customerx_customers" VALUES(193,'浙江五环钛业股份有限公司','五环钛业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:20:44.852124','2013-08-06 05:20:44.852124');
INSERT INTO "customerx_customers" VALUES(194,'宁波横河模具有限公司','横河模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 05:21:44.948800','2013-08-06 05:21:44.948800');
INSERT INTO "customerx_customers" VALUES(195,'宁波兴伦钢丝有限公司','兴伦钢丝','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 07:26:11.763954','2013-08-06 07:26:11.763954');
INSERT INTO "customerx_customers" VALUES(196,'宁波东方集团有限公司','东方线缆','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 07:29:45.929547','2013-08-06 07:29:45.929547');
INSERT INTO "customerx_customers" VALUES(197,'宁波宝新不锈钢有限公司','宝新不锈钢','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 07:31:30.568618','2013-08-06 07:31:30.568618');
INSERT INTO "customerx_customers" VALUES(198,'宁波科元塑胶有限公司','科元塑胶','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 07:32:36.809984','2013-08-06 07:32:36.809984');
INSERT INTO "customerx_customers" VALUES(199,'宁波大港意宁液压有限公司','意宁液压','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 07:34:13.402052','2013-08-06 07:34:13.402052');
INSERT INTO "customerx_customers" VALUES(200,'宁波科宁达工业有限公司','科宁达','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-06 23:59:39.245085','2013-08-06 23:59:39.245085');
INSERT INTO "customerx_customers" VALUES(201,'宁波维卡新材料有限公司','维卡新材料','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:01:38.557551','2013-08-07 00:01:38.557551');
INSERT INTO "customerx_customers" VALUES(202,'宁波科恩达机电有限公司','科恩达机电','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:02:51.465001','2013-08-07 00:02:51.465001');
INSERT INTO "customerx_customers" VALUES(203,'宁波锦泰紧固件有限公司','锦泰紧固件','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:03:48.621941','2013-08-07 00:03:48.621941');
INSERT INTO "customerx_customers" VALUES(204,'北仑区卓佳新机械厂','卓佳新机械','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:06:53.976741','2013-08-07 00:06:53.976741');
INSERT INTO "customerx_customers" VALUES(205,'浙江腾龙精线有限公司','腾龙精线','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:08:07.763346','2013-08-07 00:08:07.763346');
INSERT INTO "customerx_customers" VALUES(206,'宁波海湾重工有限公司','海湾重工','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:08:50.327360','2013-08-07 00:08:50.327360');
INSERT INTO "customerx_customers" VALUES(207,'浙江华亚光伏科技有限公司','华亚光伏科技','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:09:47.842364','2013-08-07 00:09:47.842364');
INSERT INTO "customerx_customers" VALUES(208,'宁波海天精工机械有限公司 ','海天精工机械','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:10:45.142197','2013-08-07 00:10:45.142197');
INSERT INTO "customerx_customers" VALUES(209,'宁波安信数控技术有限公司 ','安信数控','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:11:26.708907','2013-08-07 00:11:26.708907');
INSERT INTO "customerx_customers" VALUES(210,'宁波申洲针织有限公司','申洲针织','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:12:05.505068','2013-08-07 00:12:05.505068');
INSERT INTO "customerx_customers" VALUES(211,'宁波北仑千和环保工程有限公司','千和环保工程','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:13:11.571339','2013-08-07 00:13:11.571339');
INSERT INTO "customerx_customers" VALUES(212,'浙江中营风能开发有限公司','中营风能','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:14:35.469028','2013-08-07 00:14:35.469028');
INSERT INTO "customerx_customers" VALUES(213,'宁波思特雷斯金属防护材料有限公司','思特雷斯','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:15:17.151550','2013-08-07 00:15:17.151550');
INSERT INTO "customerx_customers" VALUES(214,'宁波保美新型材料有限公司','保美新型材料','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:16:01.346222','2013-08-07 00:16:01.346222');
INSERT INTO "customerx_customers" VALUES(215,'天合（宁波）电子元件紧固装置有限公司','天合电子','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:17:00.729268','2013-08-07 00:17:00.729268');
INSERT INTO "customerx_customers" VALUES(216,'宁波市北仑区日峰双电矿业有限公司','日峰双电矿业','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:17:41.641254','2013-08-07 00:17:41.641254');
INSERT INTO "customerx_customers" VALUES(217,'镇海炼化算山码头项目','算山码头','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:19:38.049865','2013-08-07 00:19:38.049865');
INSERT INTO "customerx_customers" VALUES(218,'庆达西(宁波)钢构制造有限公司','庆达西','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:20:36.334007','2013-08-07 00:20:36.334007');
INSERT INTO "customerx_customers" VALUES(219,'初田(宁波)消防器材有限公司','初田消防器材','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:21:20.150874','2013-08-07 00:21:20.150874');
INSERT INTO "customerx_customers" VALUES(220,'宁波保税区高新货柜有限公司','高新货柜','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:22:04.584583','2013-08-07 00:22:04.584583');
INSERT INTO "customerx_customers" VALUES(221,'宁波丰通东宝纤维有限公司','丰通东宝','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:22:53.936948','2013-08-07 00:22:53.936948');
INSERT INTO "customerx_customers" VALUES(222,'宁波三菱化学有限公司','三菱化学','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:23:42.450917','2013-08-07 00:23:42.450917');
INSERT INTO "customerx_customers" VALUES(223,'大榭公租房','大榭公租房','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:24:36.323073','2013-08-07 00:24:36.323073');
INSERT INTO "customerx_customers" VALUES(224,'大榭中学、青少年宫','大榭中学、青少年宫','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:25:12.712904','2013-08-07 00:25:12.712904');
INSERT INTO "customerx_customers" VALUES(225,'宁波宁港永磁材料有限公司','宁港永磁','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:39:16.854076','2013-08-07 00:39:16.854076');
INSERT INTO "customerx_customers" VALUES(226,'宁波金鸡钕铁硼强磁材料有限公司 ','金鸡钕铁硼','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:42:09.818469','2013-08-07 00:42:09.818469');
INSERT INTO "customerx_customers" VALUES(227,'宁波启阳新能源有限公司','启阳新能源','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:43:05.819780','2013-08-07 00:43:05.819780');
INSERT INTO "customerx_customers" VALUES(228,'宁波新越水泥制品有限公司','新越水泥','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:43:57.591791','2013-08-07 00:43:57.591791');
INSERT INTO "customerx_customers" VALUES(229,'浙江四明山水泥有限公司','四明山水泥','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:44:47.841725','2013-08-07 00:44:47.841725');
INSERT INTO "customerx_customers" VALUES(230,'宁波金丰鑫鑫汽车配件有限公司','金丰鑫鑫','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:47:53.058994','2013-08-07 00:47:53.058994');
INSERT INTO "customerx_customers" VALUES(231,'宁波汉浦工具有限公司 ','宁波汉浦工具','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:48:50.544283','2013-08-07 00:48:50.544283');
INSERT INTO "customerx_customers" VALUES(232,'宁波市鄞州港通新型建材有限公司','港通新型建材','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:49:29.924628','2013-08-07 00:49:29.924628');
INSERT INTO "customerx_customers" VALUES(233,'宁波博威新能源有限公司','博威新能源','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:50:05.109781','2013-08-07 00:50:05.109781');
INSERT INTO "customerx_customers" VALUES(234,'宁波太平洋电缆有限公司','太平洋电缆','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:50:45.396329','2013-08-07 00:50:45.396329');
INSERT INTO "customerx_customers" VALUES(235,'宁波市鄞州旺德金属制品厂','旺德金属','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:51:32.259035','2013-08-07 00:51:32.259035');
INSERT INTO "customerx_customers" VALUES(236,'宁波金鸡钕铁硼二期','金鸡钕铁硼二期','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:52:24.532689','2013-08-07 00:52:24.532689');
INSERT INTO "customerx_customers" VALUES(237,'宁波南车城市轨道交通装备有限公司','南车城市','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 00:53:42.306096','2013-08-07 00:53:42.306096');
INSERT INTO "customerx_customers" VALUES(238,'宁波宁凯减震器制造有限公司','宁凯减震器','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 01:27:20.387113','2013-08-07 01:27:20.387113');
INSERT INTO "customerx_customers" VALUES(239,'宁波华缘玻璃钢电器制造有限公司','华缘玻璃钢','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 01:28:32.425898','2013-08-07 01:28:32.425898');
INSERT INTO "customerx_customers" VALUES(240,'中国移动通信集团浙江有限公司宁波分公司','移动通信','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 01:29:29.526261','2013-08-07 01:29:29.526261');
INSERT INTO "customerx_customers" VALUES(241,'浙江杭州湾电工合金材料科技有限公司','杭州湾电工','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 01:57:14.385673','2013-08-07 01:57:14.385673');
INSERT INTO "customerx_customers" VALUES(242,'浙江泰先新材料股份有限公司 ','泰先新材料','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:02:06.005604','2013-08-07 02:02:06.005604');
INSERT INTO "customerx_customers" VALUES(243,'宁波杜亚机电技术有限公司','杜亚机电','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:03:56.574105','2013-08-07 02:03:56.574105');
INSERT INTO "customerx_customers" VALUES(244,'宁波巨化化工科技有限公司','巨化化工','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:04:45.677046','2013-08-07 02:04:45.677046');
INSERT INTO "customerx_customers" VALUES(245,'浙江恒河石油化工股份有限公司','恒河石油','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:05:31.562568','2013-08-07 02:05:31.562568');
INSERT INTO "customerx_customers" VALUES(246,'约翰迪尔（宁波）农业机械有限公司','约翰迪尔','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:06:14.610212','2013-08-07 02:06:14.610212');
INSERT INTO "customerx_customers" VALUES(247,'华美线业有限公司','华美线业','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:07:03.850351','2013-08-07 02:07:03.850351');
INSERT INTO "customerx_customers" VALUES(248,'宁波科博特钴镍有限公司','科博特钴镍','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:50:18.405744','2013-08-07 02:50:18.405744');
INSERT INTO "customerx_customers" VALUES(249,'余姚市鸿丰饼干厂','鸿丰饼干厂','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:51:08.830967','2013-08-07 02:51:08.830967');
INSERT INTO "customerx_customers" VALUES(250,'宁波格莱特休闲用品有限公司','格莱特休闲用品','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:51:56.035529','2013-08-07 02:51:56.035529');
INSERT INTO "customerx_customers" VALUES(251,'余姚市人民政府凤山街道办事处','凤山街道办事处','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:52:54.852502','2013-08-07 02:52:54.852502');
INSERT INTO "customerx_customers" VALUES(252,'宁波伟立机器人科技有限公司','伟立机器人','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:53:50.026952','2013-08-07 02:53:50.026952');
INSERT INTO "customerx_customers" VALUES(253,'宁波金号模具材料有限公司','金号模具','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:54:27.981845','2013-08-07 02:54:27.981845');
INSERT INTO "customerx_customers" VALUES(254,'余姚市陆埠镇人民政府','陆埠镇人民政府','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:55:53.855946','2013-08-07 02:55:53.855946');
INSERT INTO "customerx_customers" VALUES(255,'宁波琳特汽车部件有限公司 ','琳特汽车部件','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 02:57:46.001810','2013-08-07 02:57:46.001810');
INSERT INTO "customerx_customers" VALUES(256,'余姚市天顺钢管制造有限公司','天顺钢管','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:12:21.185696','2013-08-07 05:12:21.185696');
INSERT INTO "customerx_customers" VALUES(257,'宁波长江皮革有限公司','长江皮革','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:13:18.583612','2013-08-07 05:13:18.583612');
INSERT INTO "customerx_customers" VALUES(258,'宁波伊斯特通风工程有限公司','斯特通风','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:13:56.976645','2013-08-07 05:13:56.976645');
INSERT INTO "customerx_customers" VALUES(259,'余姚市第二职业技术学校','第二职业技术学校','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:14:41.033573','2013-08-07 05:14:41.033573');
INSERT INTO "customerx_customers" VALUES(260,'宁波伟森塑胶工业有限公司','伟森塑胶','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:15:17.550070','2013-08-07 05:15:17.550070');
INSERT INTO "customerx_customers" VALUES(261,'宁波和利钢业有限公司','和利钢业','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:16:05.534893','2013-08-07 05:16:05.534893');
INSERT INTO "customerx_customers" VALUES(262,'宁波市禽丰食品有限公司 ','禽丰食品','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:16:44.170623','2013-08-07 05:16:44.170623');
INSERT INTO "customerx_customers" VALUES(263,'余姚市天仁真空镀膜有限公司','天仁真空镀膜','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:17:21.886272','2013-08-07 05:17:21.886272');
INSERT INTO "customerx_customers" VALUES(264,'宁波欧德电器有限公司','欧德电器','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:18:04.148844','2013-08-07 05:18:04.148844');
INSERT INTO "customerx_customers" VALUES(265,'宁波利声音响器材有限公司','利声音响器材','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:18:45.193753','2013-08-07 05:18:45.193753');
INSERT INTO "customerx_customers" VALUES(266,'余姚市锋盛电子有限公司','锋盛电子','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:19:26.273516','2013-08-07 05:19:26.273516');
INSERT INTO "customerx_customers" VALUES(267,'宁波联大塑料管件有限公司','联大塑料管件','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:20:08.467202','2013-08-07 05:20:08.467202');
INSERT INTO "customerx_customers" VALUES(268,'余姚市五星电镀有限公司','五星电镀','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:20:44.913165','2013-08-07 05:20:44.913165');
INSERT INTO "customerx_customers" VALUES(269,'宁波海惠电镀科技有限公司','海惠电镀','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:21:23.385596','2013-08-07 05:21:23.385596');
INSERT INTO "customerx_customers" VALUES(270,'宁波利特舜电气有限公司','利特舜电气','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:22:21.532480','2013-08-07 05:22:21.532480');
INSERT INTO "customerx_customers" VALUES(271,'余姚市祥鑫金属制品厂（普通合伙）','鑫金属制品','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:22:57.894029','2013-08-07 05:22:57.894029');
INSERT INTO "customerx_customers" VALUES(272,'浙江积体动力股份有限公司','积体动力','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:23:36.606481','2013-08-07 05:23:36.606481');
INSERT INTO "customerx_customers" VALUES(273,'宁波新峰照明科技有限公司','新峰照明','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:24:16.180456','2013-08-07 05:24:16.180456');
INSERT INTO "customerx_customers" VALUES(274,'宁波金雨科技实业有限公司','金雨科技','2011-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:24:51.120682','2013-08-07 05:35:04.301394');
INSERT INTO "customerx_customers" VALUES(275,'宁波长阳科技有限公司','长阳科技','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:26:11.808045','2013-08-07 05:26:11.808045');
INSERT INTO "customerx_customers" VALUES(276,'宁波和盛达控股集团有限公司','和盛达','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:28:05.811505','2013-08-07 05:28:05.811505');
INSERT INTO "customerx_customers" VALUES(277,'宁波市企会大厦建设开发有限公司','企会大厦','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:29:09.880979','2013-08-07 05:29:09.880979');
INSERT INTO "customerx_customers" VALUES(278,'宝庆寺地产项目','宝庆寺地产','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:30:05.187231','2013-08-07 05:30:05.187231');
INSERT INTO "customerx_customers" VALUES(279,'宁波西诺家具有限公司','西诺家具','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:31:02.797134','2013-08-07 05:31:02.797134');
INSERT INTO "customerx_customers" VALUES(280,'甬江街道安置房建设办公室','甬江街道','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:31:43.847944','2013-08-07 05:31:43.847944');
INSERT INTO "customerx_customers" VALUES(281,'宁波市大金塔餐饮管理有限公司','大金塔餐饮管理','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:32:25.968358','2013-08-07 05:32:25.968358');
INSERT INTO "customerx_customers" VALUES(282,'象山制阀有限公司','象山制阀','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:33:44.640193','2013-08-07 05:33:44.640193');
INSERT INTO "customerx_customers" VALUES(283,'象山县茅洋内燃机配件厂','茅洋内燃机','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:34:29.671106','2013-08-07 05:34:50.165830');
INSERT INTO "customerx_customers" VALUES(284,'宁波市强晟光伏有限公司','强晟光伏','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:36:39.319798','2013-08-07 05:36:39.319798');
INSERT INTO "customerx_customers" VALUES(285,'宁波迪奥光伏科技有限公司','迪奥光伏','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:40:25.141926','2013-08-07 05:40:25.141926');
INSERT INTO "customerx_customers" VALUES(286,'宁波祥伟能源科技有限公司','祥伟能源科技','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:41:52.650278','2013-08-07 05:41:52.650278');
INSERT INTO "customerx_customers" VALUES(287,'宁波盛昕能源有限公司','盛昕能源','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:42:41.993232','2013-08-07 05:42:41.993232');
INSERT INTO "customerx_customers" VALUES(288,'宁波永欣橡塑有限公司','永欣橡塑','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:45:15.950388','2013-08-07 05:45:15.950388');
INSERT INTO "customerx_customers" VALUES(289,'象山象牌动力制造有限公司','象牌动力','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:45:59.756621','2013-08-07 05:45:59.756621');
INSERT INTO "customerx_customers" VALUES(290,'宁波恒基豪天新型建材有限公司 ','恒基豪天','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:46:41.585940','2013-08-07 05:46:41.585940');
INSERT INTO "customerx_customers" VALUES(291,'象山爱心水产有限公司 ','爱心水产','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:47:25.390407','2013-08-07 05:47:25.390407');
INSERT INTO "customerx_customers" VALUES(292,'宁波科捷铸造有限公司 ','科捷铸造','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:48:02.411496','2013-08-07 05:48:02.411496');
INSERT INTO "customerx_customers" VALUES(293,'象山丰源墙体材料有限公司','丰源墙体','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:48:42.363459','2013-08-07 05:48:42.363459');
INSERT INTO "customerx_customers" VALUES(294,'象山石浦金穗水产加工厂','石浦金穗水产','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:49:36.823052','2013-08-07 05:49:36.823052');
INSERT INTO "customerx_customers" VALUES(295,'宁波天安(集团)股份有限公司','天安(集团)','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:50:18.197397','2013-08-07 05:50:18.197397');
INSERT INTO "customerx_customers" VALUES(296,'宁波正业工贸发展有限公司','正业工贸','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:51:04.562626','2013-08-07 05:51:04.562626');
INSERT INTO "customerx_customers" VALUES(297,'宁波远丰机电有限公司','远丰机电','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:51:51.552416','2013-08-07 05:51:51.552416');
INSERT INTO "customerx_customers" VALUES(298,'宁波和泰电气有限公司','和泰电气','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:57:39.586489','2013-08-07 05:57:39.586489');
INSERT INTO "customerx_customers" VALUES(299,'宁波麟竣针纺织有限公司','麟竣针纺织','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:58:30.684575','2013-08-07 05:58:30.684575');
INSERT INTO "customerx_customers" VALUES(300,'宁波杭钢富春管业有限公司','杭钢富春管业','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 05:59:10.885930','2013-08-07 05:59:10.885930');
INSERT INTO "customerx_customers" VALUES(301,'象山石浦昌盛船舶配件铸造厂','石浦昌盛','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 07:09:58.241324','2013-08-07 07:09:58.241324');
INSERT INTO "customerx_customers" VALUES(302,'宁波市象山亿特诺工程机械有限公司','亿特诺工程','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 07:11:27.246672','2013-08-07 07:11:27.246672');
INSERT INTO "customerx_customers" VALUES(303,'斐德瑞通用设备制造（宁波）有限公司','斐德瑞通用设备','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 07:49:20.096918','2013-08-07 07:49:20.096918');
INSERT INTO "customerx_customers" VALUES(304,'宁波精工铸造有限公司','精工铸造','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:21:17.934113','2013-08-07 08:21:17.934113');
INSERT INTO "customerx_customers" VALUES(305,'浙江林氏汽车零部件有限公司','林氏汽车零部件','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:22:13.429798','2013-08-07 08:22:13.429798');
INSERT INTO "customerx_customers" VALUES(306,'宁波旭东压铸加工有限公司','旭东压铸','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:23:20.055750','2013-08-07 08:23:20.055750');
INSERT INTO "customerx_customers" VALUES(307,'宁波海运希铁隆工业有限公司','海运希铁隆','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:24:01.458884','2013-08-07 08:24:01.458884');
INSERT INTO "customerx_customers" VALUES(308,'宁波德精机械有限公司','德精机械','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:24:42.363104','2013-08-07 08:24:42.363104');
INSERT INTO "customerx_customers" VALUES(309,'浙江天达环保股份有限公司','天达环保','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:25:27.831080','2013-08-07 08:25:27.831080');
INSERT INTO "customerx_customers" VALUES(310,'宁波卡倍亿电气技术有限公司','卡倍亿电气','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:26:17.338449','2013-08-07 08:26:17.338449');
INSERT INTO "customerx_customers" VALUES(311,'宁波华成阀门有限公司','华成阀门','2011-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:27:25.026716','2013-08-07 08:27:25.026716');
INSERT INTO "customerx_customers" VALUES(312,'宁波市易驰汽车部件有限公司','易驰汽车部件','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:31:24.739338','2013-08-07 08:31:24.739338');
INSERT INTO "customerx_customers" VALUES(313,'宁波好孩子儿童用品有限公司','好孩子儿童用品','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:32:12.565821','2013-08-07 08:32:12.565821');
INSERT INTO "customerx_customers" VALUES(314,'宁波激智新材料科技有限公司','激智新材料','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:32:57.612175','2013-08-07 08:32:57.612175');
INSERT INTO "customerx_customers" VALUES(315,'宁波亚德客自动化工业有限公司','亚德客自动化工业','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:33:47.647137','2013-08-07 08:33:47.647137');
INSERT INTO "customerx_customers" VALUES(316,'宁波神鱼海运有限公司','神鱼海运','2011-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-07 08:35:51.754786','2013-08-07 08:35:51.754786');
INSERT INTO "customerx_customers" VALUES(317,'浙江逸盛石化有限公司','逸盛石化','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:28:32.719753','2013-08-08 00:28:32.719753');
INSERT INTO "customerx_customers" VALUES(318,'宁波市北仑区白峰双屯矿业有限公司','白峰双屯矿业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:30:03.117751','2013-08-08 00:30:03.117751');
INSERT INTO "customerx_customers" VALUES(319,'台化塑胶（宁波）有限公司','台化塑胶','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:30:48.476697','2013-08-08 00:30:48.476697');
INSERT INTO "customerx_customers" VALUES(320,'徐阳电子衡器（宁波）有限公司','徐阳电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:32:07.738256','2013-08-08 00:32:07.738256');
INSERT INTO "customerx_customers" VALUES(321,'宁波经济技术开发区仁通钢化玻璃有限公司','仁通钢化玻璃','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:32:50.718238','2013-08-08 00:32:50.718238');
INSERT INTO "customerx_customers" VALUES(322,'宁波长飞亚塑料机械制造有限公司','长飞亚塑料机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:33:37.436457','2013-08-08 00:33:37.436457');
INSERT INTO "customerx_customers" VALUES(323,'宁波海天华远机械有限公司','海天华远机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:35:00.069358','2013-08-08 00:35:00.069358');
INSERT INTO "customerx_customers" VALUES(324,'宁波弘讯科技股份有限公司','弘讯科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:35:34.697349','2013-08-08 00:35:34.697349');
INSERT INTO "customerx_customers" VALUES(325,'宁波航信混凝土构件有限公司','航信混凝土','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:36:11.975764','2013-08-08 00:36:11.975764');
INSERT INTO "customerx_customers" VALUES(326,'宁波银润汽车部件有限公司','银润汽车部件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:37:18.501849','2013-08-08 00:37:18.501849');
INSERT INTO "customerx_customers" VALUES(327,'宁波钢铁有限公司','宁波钢铁','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:38:08.588698','2013-08-08 00:38:08.588698');
INSERT INTO "customerx_customers" VALUES(328,'宁波海燕家电玻璃技术有限公司','海燕家电玻璃','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:38:44.414440','2013-08-08 00:38:44.414440');
INSERT INTO "customerx_customers" VALUES(329,'宁波君灵模具技术有限公司','君灵模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:39:20.129746','2013-08-08 00:39:20.129746');
INSERT INTO "customerx_customers" VALUES(330,'宁波市北仑地勤工贸有限公司','地勤工贸','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:58:44.170493','2013-08-08 00:58:44.170493');
INSERT INTO "customerx_customers" VALUES(331,'宁波市北仑鑫林机电模具有限公司','鑫林机电模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 00:59:22.885914','2013-08-08 00:59:22.885914');
INSERT INTO "customerx_customers" VALUES(332,'宁波金达模具有限公司','金达模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:00:02.712457','2013-08-08 01:00:02.712457');
INSERT INTO "customerx_customers" VALUES(333,'宁波鑫达模具制造有限公司','鑫达模具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:00:46.230667','2013-08-08 01:00:46.230667');
INSERT INTO "customerx_customers" VALUES(334,'宁波环亚机械制造有限公司','环亚机械制造','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:01:25.217910','2013-08-08 01:01:25.217910');
INSERT INTO "customerx_customers" VALUES(335,'宁波星源机械有限公司','星源机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:02:10.267177','2013-08-08 01:02:10.267177');
INSERT INTO "customerx_customers" VALUES(336,'宁波旭升机械有限公司','旭升机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:07:24.480648','2013-08-08 01:07:24.480648');
INSERT INTO "customerx_customers" VALUES(337,'宁波臻至机械模具有限公司','臻至机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:08:06.419993','2013-08-08 01:08:06.419993');
INSERT INTO "customerx_customers" VALUES(338,'宁波辉旺机械有限公司','辉旺机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:08:48.898401','2013-08-08 01:08:48.898401');
INSERT INTO "customerx_customers" VALUES(339,'宁波宝井钢材加工配送有限公司','宝井钢材加工','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:09:39.657471','2013-08-08 01:09:39.657471');
INSERT INTO "customerx_customers" VALUES(340,'宁波敏达机电有限公司','敏达机电','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:10:46.017429','2013-08-08 01:10:46.017429');
INSERT INTO "customerx_customers" VALUES(341,'宁波华耀纺织有限公司','华耀纺织','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:11:26.447686','2013-08-08 01:11:26.447686');
INSERT INTO "customerx_customers" VALUES(342,'宁波柯宝厨卫有限公司','柯宝厨卫','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:12:03.755460','2013-08-08 01:12:03.755460');
INSERT INTO "customerx_customers" VALUES(343,'宁波海迈克数控技术有限公司','海迈克数控','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:12:44.947749','2013-08-08 01:12:44.947749');
INSERT INTO "customerx_customers" VALUES(344,'宁波凯耀电器制造有限公司','凯耀电器制造','2012-01-01','',1,3,'1111','111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:13:26.476686','2013-08-08 01:13:26.476686');
INSERT INTO "customerx_customers" VALUES(345,'宁波力劲机械有限公司','力劲机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:14:06.661097','2013-08-08 01:14:06.661097');
INSERT INTO "customerx_customers" VALUES(346,'意宁液压股份有限公司','意宁液压股份','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:14:57.570839','2013-08-08 01:14:57.570839');
INSERT INTO "customerx_customers" VALUES(347,'宁波市北仑赛维达机械有限公司','赛维达机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:15:35.624874','2013-08-08 01:15:35.624874');
INSERT INTO "customerx_customers" VALUES(348,'宁波海天驱动有限公司','海天驱动','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 01:16:13.343083','2013-08-08 01:16:13.343083');
INSERT INTO "customerx_customers" VALUES(349,'宁波固特瑞汽车零部件有限公司','固特瑞汽车零部件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:15:32.081065','2013-08-08 02:15:32.081065');
INSERT INTO "customerx_customers" VALUES(350,'宁波港股份有限公司','宁波港','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:16:42.739129','2013-08-08 02:16:42.739129');
INSERT INTO "customerx_customers" VALUES(351,'海尔施生物医药股份有限公司','海尔施生物医药','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:17:21.722852','2013-08-08 02:17:21.722852');
INSERT INTO "customerx_customers" VALUES(352,'宁波星峰机械有限公司','星峰机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:18:18.698951','2013-08-08 02:18:18.698951');
INSERT INTO "customerx_customers" VALUES(353,'宝钢矿棉科技（宁波）有限公司','宝钢矿棉科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:19:10.373712','2013-08-08 02:19:10.373712');
INSERT INTO "customerx_customers" VALUES(354,'宁波菲仕电机技术有限公司','菲仕电机','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:19:47.557686','2013-08-08 02:19:47.557686');
INSERT INTO "customerx_customers" VALUES(355,'浙江绿脉农业科技有限公司','绿脉农业科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:20:26.082913','2013-08-08 02:20:26.082913');
INSERT INTO "customerx_customers" VALUES(356,'宁钢污水回用项目','污水回用','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:21:06.691780','2013-08-08 02:21:06.691780');
INSERT INTO "customerx_customers" VALUES(357,'宁波中桥精密机械有限公司','中桥精密机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:21:46.100991','2013-08-08 02:21:46.100991');
INSERT INTO "customerx_customers" VALUES(358,'宁波世阳机械制造有限公司','世阳机械制造','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:22:28.090509','2013-08-08 02:22:28.090509');
INSERT INTO "customerx_customers" VALUES(359,'宁波腾龙伟业机械有限公司','腾龙伟业机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 02:23:24.996330','2013-08-08 02:23:24.996330');
INSERT INTO "customerx_customers" VALUES(360,'宁波保税区升乐电工合金材料有限公司','升乐电工合金材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:14:39.043835','2013-08-08 05:14:39.043835');
INSERT INTO "customerx_customers" VALUES(361,'宁波亿丰食品有限公司','亿丰食品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:15:16.412234','2013-08-08 05:15:16.412234');
INSERT INTO "customerx_customers" VALUES(362,'浙江为蓝环保科技有限公司','为蓝环保科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:16:05.818900','2013-08-08 05:16:05.818900');
INSERT INTO "customerx_customers" VALUES(363,'宁波日中材料科技有限公司','日中材料科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:16:41.159327','2013-08-08 05:16:41.159327');
INSERT INTO "customerx_customers" VALUES(364,'宁波市威尔金属有限公司','威尔金属','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:17:25.641146','2013-08-08 05:17:25.641146');
INSERT INTO "customerx_customers" VALUES(365,'宁波九广钢铁有限公司','九广钢铁','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:18:05.872972','2013-08-08 05:18:05.872972');
INSERT INTO "customerx_customers" VALUES(366,'宁波纬尚汽车零部件有限公司','纬尚汽车零部件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:18:44.759697','2013-08-08 05:18:44.759697');
INSERT INTO "customerx_customers" VALUES(367,'宁波市昊华包装制品有限公司','昊华包装制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:19:30.273698','2013-08-08 05:19:30.273698');
INSERT INTO "customerx_customers" VALUES(368,'宁波滚石自动化科技有限公司','滚石自动化科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:20:06.149432','2013-08-08 05:20:06.149432');
INSERT INTO "customerx_customers" VALUES(369,'宁波丰银包装印刷有限公司','丰银包装印刷','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:20:45.621439','2013-08-08 05:20:45.621439');
INSERT INTO "customerx_customers" VALUES(370,'宁波帅特龙车辆部件有限公司','帅特龙车辆部件','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:21:25.516024','2013-08-08 05:21:25.516024');
INSERT INTO "customerx_customers" VALUES(371,'宁波圣龙浦洛西凸轮轴有限公司','圣龙浦洛西凸轮轴','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:22:06.893184','2013-08-08 05:22:06.893184');
INSERT INTO "customerx_customers" VALUES(372,'宁波市鄞州地平汽车软轴软管厂','地平汽车软轴软管','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:22:44.339087','2013-08-08 05:22:44.339087');
INSERT INTO "customerx_customers" VALUES(373,'宁波建工钢构有限公司','建工钢构','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:23:31.368501','2013-08-08 05:23:31.368501');
INSERT INTO "customerx_customers" VALUES(374,'宁波市鄞州鑫国金属铸造有限公司','鑫国金属铸造','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:24:12.511382','2013-08-08 05:24:12.511382');
INSERT INTO "customerx_customers" VALUES(375,'宁波市博祥新材料科技有限公司','博祥新材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:24:51.125751','2013-08-08 05:24:51.125751');
INSERT INTO "customerx_customers" VALUES(376,'宁波圣玛洁具有限公司','圣玛洁具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:25:34.101644','2013-08-08 05:25:34.101644');
INSERT INTO "customerx_customers" VALUES(377,'宁波市鄞州光跃特种钢有限公司','光跃特种钢','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:26:06.466130','2013-08-08 05:26:06.466130');
INSERT INTO "customerx_customers" VALUES(378,'宁波华晟轻工集团有限公司','华晟轻工','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:26:50.674710','2013-08-08 05:26:50.674710');
INSERT INTO "customerx_customers" VALUES(379,'宁波关慈木制品实业有限公司','关慈木制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:27:26.087869','2013-08-08 05:27:26.087869');
INSERT INTO "customerx_customers" VALUES(380,'宁波遵航汽车零部件有限公司','遵航汽车零部件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:28:02.251379','2013-08-08 05:28:02.251379');
INSERT INTO "customerx_customers" VALUES(381,'宁波市鄞州恒拓采石场','恒拓采石场','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:28:37.244786','2013-08-08 05:28:37.244786');
INSERT INTO "customerx_customers" VALUES(382,'宁波真和电器股份有限公司','真和电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:29:12.065729','2013-08-08 05:29:12.065729');
INSERT INTO "customerx_customers" VALUES(383,'宁波滨海石化有限公司','滨海石化','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:29:46.002173','2013-08-08 05:29:46.002173');
INSERT INTO "customerx_customers" VALUES(384,'宁波友基工贸有限公司','友基工贸','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:30:18.688331','2013-08-08 05:30:18.688331');
INSERT INTO "customerx_customers" VALUES(385,'宁波汉高润滑油有限公司','汉高润滑油','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:30:59.084331','2013-08-08 05:30:59.084331');
INSERT INTO "customerx_customers" VALUES(386,'宁波市鄞州龙杭物流有限公司','龙杭物流','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:31:50.883649','2013-08-08 05:31:50.883649');
INSERT INTO "customerx_customers" VALUES(387,'宁波黄泰机电有限公司','黄泰机电','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:32:30.680984','2013-08-08 05:32:30.680984');
INSERT INTO "customerx_customers" VALUES(388,'宁波黄泰实业有限公司','黄泰实业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:33:04.869305','2013-08-08 05:33:04.869305');
INSERT INTO "customerx_customers" VALUES(389,'宁波市鄞州南洋机制砂有限公司','南洋机制砂','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:33:43.888772','2013-08-08 05:33:43.888772');
INSERT INTO "customerx_customers" VALUES(390,'宁波誉丰水产有限公司','誉丰水产','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:34:16.053265','2013-08-08 05:34:16.053265');
INSERT INTO "customerx_customers" VALUES(391,'宁波市鄞州光学仪器厂','光学仪器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:34:52.421501','2013-08-08 05:34:52.421501');
INSERT INTO "customerx_customers" VALUES(392,'宁波市瑞康光电有限公司','瑞康光电','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:35:24.749540','2013-08-08 05:35:24.749540');
INSERT INTO "customerx_customers" VALUES(393,'宁波弗莱格液压有限公司','弗莱格液压','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:36:01.109725','2013-08-08 05:36:01.109725');
INSERT INTO "customerx_customers" VALUES(394,'宁波金鸡钕铁硼强磁材料有限公司','金鸡钕铁硼强磁','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:36:37.572644','2013-08-08 05:36:37.572644');
INSERT INTO "customerx_customers" VALUES(395,'宁波百发混凝土有限公司','百发混凝土','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:37:38.209082','2013-08-08 05:37:38.209082');
INSERT INTO "customerx_customers" VALUES(396,'宁波市鸿腾机电有限公司','鸿腾机电','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:38:10.471228','2013-08-08 05:38:10.471228');
INSERT INTO "customerx_customers" VALUES(397,'宁波市鄞州亚荣电器配件厂（普通合伙）','亚荣电器配件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:38:44.800564','2013-08-08 05:40:54.043499');
INSERT INTO "customerx_customers" VALUES(398,'宁波滨海鸿远钢结构有限公司','滨海鸿远钢结构','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:39:25.312137','2013-08-08 05:39:25.312137');
INSERT INTO "customerx_customers" VALUES(399,'宁波市鄞州五乡永兴石料加工厂','五乡永兴石料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:40:03.321690','2013-08-08 05:40:03.321690');
INSERT INTO "customerx_customers" VALUES(400,'宁波东川游泳池设备有限公司','东川游泳池设备','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 05:40:41.759885','2013-08-08 05:40:41.759885');
INSERT INTO "customerx_customers" VALUES(401,'宁波旷代生物科技有限公司','旷代生物科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:26:15.375227','2013-08-08 06:26:15.375227');
INSERT INTO "customerx_customers" VALUES(402,'宁波市鄞州东吴麦威机械配件厂','东吴麦威机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:27:08.705803','2013-08-08 06:27:08.705803');
INSERT INTO "customerx_customers" VALUES(403,'宁波市鄞州行健轴业有限公司','行健轴业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:28:35.542891','2013-08-08 06:28:35.542891');
INSERT INTO "customerx_customers" VALUES(404,'宁波市鄞州奇旺化纤纺织品有限公司','奇旺化纤纺织品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:48:02.373374','2013-08-08 06:48:02.373374');
INSERT INTO "customerx_customers" VALUES(405,'宁波精艺阀门管件有限公司','精艺阀门管件','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:48:49.811486','2013-08-08 06:48:49.811486');
INSERT INTO "customerx_customers" VALUES(406,'宁波同创强磁材料有限公司','同创强磁材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:49:51.743065','2013-08-08 06:49:51.743065');
INSERT INTO "customerx_customers" VALUES(407,'宁波鑫其高科磁业有限公司','鑫其高科磁业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:51:58.781234','2013-08-08 06:51:58.781234');
INSERT INTO "customerx_customers" VALUES(408,'宁波市鄞州胶丸厂','鄞州胶丸厂','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 06:58:49.647636','2013-08-08 06:58:49.647636');
INSERT INTO "customerx_customers" VALUES(409,'宁波长城沥青制品有限公司','长城沥青制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:22:42.856214','2013-08-08 07:22:42.856214');
INSERT INTO "customerx_customers" VALUES(410,'宁波市三生药业有限公司','宁波市三生药业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:24:34.493985','2013-08-08 07:24:34.493985');
INSERT INTO "customerx_customers" VALUES(411,'宁波市鄞州华尔电器制造有限公司','华尔电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:25:20.754544','2013-08-08 07:25:20.754544');
INSERT INTO "customerx_customers" VALUES(412,'联强国际（宁波）科技有限公司','联强国际','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:26:38.733129','2013-08-08 07:26:38.733129');
INSERT INTO "customerx_customers" VALUES(413,'宁波普利赛思电子有限公司','普利赛思电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:27:34.306223','2013-08-08 07:27:34.306223');
INSERT INTO "customerx_customers" VALUES(414,'宁波市鄞州天一电镀有限公司','天一电镀','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:29:44.638111','2013-08-08 07:29:44.638111');
INSERT INTO "customerx_customers" VALUES(415,'宁波福泰电器有限公司','福泰电器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:30:41.199369','2013-08-08 07:30:41.199369');
INSERT INTO "customerx_customers" VALUES(416,'宁波德隆朝阳防水布有限公司','德隆朝阳防水布','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:31:40.714827','2013-08-08 07:31:40.714827');
INSERT INTO "customerx_customers" VALUES(417,'宁波华煌新材料有限公司','华煌新材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:32:25.015984','2013-08-08 07:32:25.015984');
INSERT INTO "customerx_customers" VALUES(418,'宁波利时超市有限公司','利时超市','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:33:02.098534','2013-08-08 07:33:02.098534');
INSERT INTO "customerx_customers" VALUES(419,'宁波市鄞州张发特种汽车软轴软管厂','张发特种汽车软轴软管','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:33:50.274930','2013-08-08 07:33:50.274930');
INSERT INTO "customerx_customers" VALUES(420,'宁波汇华电子有限公司','汇华电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-08 07:34:35.861095','2013-08-08 07:34:35.861095');
INSERT INTO "customerx_customers" VALUES(421,'宁波市鄞州振运电镀厂','鄞州振运电镀','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 00:56:54.853415','2013-08-09 00:56:54.853415');
INSERT INTO "customerx_customers" VALUES(422,'宁波金丰线带有限公司','金丰线带','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 00:58:39.707339','2013-08-09 00:58:39.707339');
INSERT INTO "customerx_customers" VALUES(423,'宁波国奥汽车销售有限公司','国奥汽车销售','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 00:59:53.887189','2013-08-09 00:59:53.887189');
INSERT INTO "customerx_customers" VALUES(424,'宁波市鄞州天童新型墙体材料厂','天童新型墙体材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:01:21.943473','2013-08-09 01:01:21.943473');
INSERT INTO "customerx_customers" VALUES(425,'宁波市鄞州宣家墙体材料砖瓦厂','宣家墙体材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:02:25.614191','2013-08-09 01:02:25.614191');
INSERT INTO "customerx_customers" VALUES(426,'宁波联安房产经纪有限公司','联安房产经纪','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:03:01.782500','2013-08-09 01:03:01.782500');
INSERT INTO "customerx_customers" VALUES(427,'宁波凌珂新材料科技有限公司','凌珂新材料科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:04:22.342971','2013-08-09 01:04:22.342971');
INSERT INTO "customerx_customers" VALUES(428,'宁波德泰机械实业有限公司','德泰机械','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:05:33.305704','2013-08-09 01:05:33.305704');
INSERT INTO "customerx_customers" VALUES(429,'宁波华尔润特种玻璃有限公司','华尔润特种玻璃','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:06:24.792822','2013-08-09 01:06:24.792822');
INSERT INTO "customerx_customers" VALUES(430,'宁波吉德家电实业有限公司','吉德家电','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:07:01.221767','2013-08-09 01:07:01.221767');
INSERT INTO "customerx_customers" VALUES(431,'宁波诚达传感器有限公司','诚达传感器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:08:00.441593','2013-08-09 01:08:00.441593');
INSERT INTO "customerx_customers" VALUES(432,'宁波市鄞州哈贝纸制品有限公司','哈贝纸制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:09:23.640480','2013-08-09 01:09:23.640480');
INSERT INTO "customerx_customers" VALUES(433,'宁波狮丹努控股有限公司','狮丹努控股','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:10:19.392168','2013-08-09 01:10:19.392168');
INSERT INTO "customerx_customers" VALUES(434,'宁波恒顺交通工程有限公司鄞州分公司','恒顺交通工程','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:16:24.663123','2013-08-09 01:16:24.663123');
INSERT INTO "customerx_customers" VALUES(435,'宁波东江生物质能燃料有限公司','东江生物质能燃料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:17:01.625931','2013-08-09 01:17:01.625931');
INSERT INTO "customerx_customers" VALUES(436,'浙江中烟工业有限责任公司','中烟工业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:17:49.535544','2013-08-09 01:17:49.535544');
INSERT INTO "customerx_customers" VALUES(437,'宁波惠之星新材料科技有限公司','惠之星新材料','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:19:02.807136','2013-08-09 01:19:02.807136');
INSERT INTO "customerx_customers" VALUES(438,'宁波海螺塑料型材有限责任公司','海螺塑料型材','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:20:25.959677','2013-08-09 01:20:25.959677');
INSERT INTO "customerx_customers" VALUES(439,'宁波柏瑞电器有限公司','柏瑞电器','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:21:35.413178','2013-08-09 01:21:35.413178');
INSERT INTO "customerx_customers" VALUES(440,'浙江新盛锦纶有限公司','新盛锦纶','2012-01-01','',1,3,'1111','1111',7,'t',2,NULL,'','','','','','','','2013-08-09 01:22:43.216725','2013-08-09 01:22:43.216725');
INSERT INTO "customerx_customers" VALUES(441,'浙江华鑫化纤有限公司','华鑫化纤','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:24:02.929867','2013-08-09 01:24:02.929867');
INSERT INTO "customerx_customers" VALUES(442,'余姚市城市排水有限公司','城市排水','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:25:18.846065','2013-08-09 01:25:18.846065');
INSERT INTO "customerx_customers" VALUES(443,'余姚市城市建设指挥部','城市建设','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:30:47.158812','2013-08-09 01:30:47.158812');
INSERT INTO "customerx_customers" VALUES(444,'余姚市兴达不锈钢有限公司','兴达不锈钢','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:31:57.180764','2013-08-09 01:31:57.180764');
INSERT INTO "customerx_customers" VALUES(445,'余姚市四明湖水库干渠节水改造工程项目办公室','四明湖水库干渠节水改造','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:32:47.043213','2013-08-09 01:32:47.043213');
INSERT INTO "customerx_customers" VALUES(446,'余姚市和兴特种钢有限公司','和兴特种钢','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:33:26.436772','2013-08-09 01:33:26.436772');
INSERT INTO "customerx_customers" VALUES(447,'宁波白水冲矿泉饮品有限公司','白水冲矿泉饮品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:56:48.169907','2013-08-09 01:56:48.169907');
INSERT INTO "customerx_customers" VALUES(448,'余姚搏威铝氧化有限公司','搏威铝氧化','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:58:02.789898','2013-08-09 01:58:02.789898');
INSERT INTO "customerx_customers" VALUES(449,'浙江大丰建筑装饰工程有限公司','大丰建筑装饰工程','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:58:44.382662','2013-08-09 01:58:44.382662');
INSERT INTO "customerx_customers" VALUES(450,'余姚市三星皮塑金属厂','三星皮塑','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 01:59:27.349704','2013-08-09 01:59:27.349704');
INSERT INTO "customerx_customers" VALUES(451,'大建工业（宁波）有限公司','大建工业','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:00:48.960322','2013-08-09 02:00:48.960322');
INSERT INTO "customerx_customers" VALUES(452,'宁波唯可照明电器有限公司','唯可照明电器','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:01:26.541774','2013-08-09 02:01:26.541774');
INSERT INTO "customerx_customers" VALUES(453,'余姚市电子仪表元件三厂','余姚市电子仪表','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:03:14.653030','2013-08-09 02:03:14.653030');
INSERT INTO "customerx_customers" VALUES(454,'富诚汽车零部件有限公司','富诚汽车零部件','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:03:56.684577','2013-08-09 02:03:56.684577');
INSERT INTO "customerx_customers" VALUES(455,'浙江申通瑞德物流有限公司','申通瑞德物流','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:04:41.592309','2013-08-09 02:04:41.592309');
INSERT INTO "customerx_customers" VALUES(456,'余姚市临山湖堤农贸市场服务有限公司','临山湖堤农贸市场','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:05:49.234870','2013-08-09 02:05:49.234870');
INSERT INTO "customerx_customers" VALUES(457,'余姚市友力紧固件厂（普通合伙）','友力紧固件','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:08:18.839649','2013-08-09 02:08:18.839649');
INSERT INTO "customerx_customers" VALUES(458,'宁波圣捷喷雾泵有限公司','圣捷喷雾泵','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:08:46.648258','2013-08-09 02:08:46.648258');
INSERT INTO "customerx_customers" VALUES(459,'余姚市联海实业有限公司','联海实业','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:09:12.776545','2013-08-09 02:09:12.776545');
INSERT INTO "customerx_customers" VALUES(460,'余姚市莹佳电器有限公司','莹佳电器','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:09:56.433006','2013-08-09 02:09:56.433006');
INSERT INTO "customerx_customers" VALUES(461,'余姚市凯莱电器有限公司','凯莱电器','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:11:08.581127','2013-08-09 02:11:08.581127');
INSERT INTO "customerx_customers" VALUES(462,'余姚市银树绿色食品有限公司','银树绿色食品','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:13:28.463984','2013-08-09 02:13:28.463984');
INSERT INTO "customerx_customers" VALUES(463,'余姚市东雅电器有限公司','东雅电器','2012-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:16:11.690489','2013-08-09 02:16:11.690489');
INSERT INTO "customerx_customers" VALUES(464,'宁波墨西科技有限公司','墨西科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:18:05.250526','2013-08-09 02:18:05.250526');
INSERT INTO "customerx_customers" VALUES(465,'慈溪市向维海洋导航仪器有限公司','向维海洋导航仪器','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:18:50.449593','2013-08-09 02:18:50.449593');
INSERT INTO "customerx_customers" VALUES(466,'宁波长立轴承有限公司','长立轴承','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:19:35.782561','2013-08-09 02:19:35.782561');
INSERT INTO "customerx_customers" VALUES(467,'宁波汉博贵金属合金有限公司','汉博贵金属合金','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:20:21.717620','2013-08-09 02:20:21.717620');
INSERT INTO "customerx_customers" VALUES(468,'宁波巨化化工科技有限公司(1500t氯化胶)','巨化化工(1500t氯化胶)','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:21:57.835399','2013-08-09 02:21:57.835399');
INSERT INTO "customerx_customers" VALUES(469,'宁波巨化化工科技有限公司(230kt/a甲烷氯化物)','巨化化工(230kt/a甲烷氯化物)','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:22:59.139307','2013-08-09 02:22:59.139307');
INSERT INTO "customerx_customers" VALUES(470,'宁波安利普电子有限公司','安利普电子','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:24:12.836403','2013-08-09 02:24:12.836403');
INSERT INTO "customerx_customers" VALUES(471,'宁波博汇石油化工有限公司','博汇石油化工','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:25:41.485622','2013-08-09 02:25:41.485622');
INSERT INTO "customerx_customers" VALUES(472,'宁波益富乐生物科技有限公司','益富乐生物科技','2012-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:41:21.943872','2013-08-09 02:41:21.943872');
INSERT INTO "customerx_customers" VALUES(473,'宁波普天照明有限公司','普天照明','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 02:45:00.045160','2013-08-09 02:45:00.045160');
INSERT INTO "customerx_customers" VALUES(474,'宁波奥凯铝业有限公司','奥凯铝业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:18:40.409896','2013-08-09 05:18:40.409896');
INSERT INTO "customerx_customers" VALUES(475,'杭州肯德基有限公司','杭州肯德基','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:19:24.678491','2013-08-09 05:19:24.678491');
INSERT INTO "customerx_customers" VALUES(476,'宁波格林斯包装科技股份有限公司','格林斯包装科技','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:20:06.059665','2013-08-09 05:20:06.059665');
INSERT INTO "customerx_customers" VALUES(477,'宁波富祺电力金具有限公司','富祺电力金具','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:20:52.705600','2013-08-09 05:20:52.705600');
INSERT INTO "customerx_customers" VALUES(478,'奉化纳米多镀业有限公司','纳米多镀业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:21:31.230052','2013-08-09 05:21:31.230052');
INSERT INTO "customerx_customers" VALUES(479,'宁波今新建材有限公司','今新建材','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:22:09.393820','2013-08-09 05:22:09.393820');
INSERT INTO "customerx_customers" VALUES(480,'宁波金网铜线有限公司','金网铜线','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:22:49.919416','2013-08-09 05:22:49.919416');
INSERT INTO "customerx_customers" VALUES(481,'宁波汉普塑业有限公司','汉普塑业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:23:25.604640','2013-08-09 05:23:25.604640');
INSERT INTO "customerx_customers" VALUES(482,'宁波格雷斯电气有限公司','格雷斯电气','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:23:59.541761','2013-08-09 05:23:59.541761');
INSERT INTO "customerx_customers" VALUES(483,'象山圣达塑胶有限公司','圣达塑胶','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:24:44.497074','2013-08-09 05:24:44.497074');
INSERT INTO "customerx_customers" VALUES(484,'宁波飞润海洋生物科技有限公司','飞润海洋生物','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:25:33.214377','2013-08-09 05:25:33.214377');
INSERT INTO "customerx_customers" VALUES(485,'宁波全力机械模具有限公司','全力机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:27:18.179306','2013-08-09 05:27:18.179306');
INSERT INTO "customerx_customers" VALUES(486,'象山科镭激光涂装有限公司','科镭激光涂装','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:27:57.868111','2013-08-09 05:27:57.868111');
INSERT INTO "customerx_customers" VALUES(487,'宁波天元机械制造有限公司','天元机械','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:28:40.544302','2013-08-09 05:28:40.544302');
INSERT INTO "customerx_customers" VALUES(488,'得力集团有限公司','得力集团','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:35:38.204266','2013-08-09 05:35:38.204266');
INSERT INTO "customerx_customers" VALUES(489,'宁波嘉莱金属制品有限公司','嘉莱金属制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:39:44.534017','2013-08-09 05:39:44.534017');
INSERT INTO "customerx_customers" VALUES(490,'宁海县桥头胡宁升石料加工厂','桥头胡宁升石料加工','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:40:36.172439','2013-08-09 05:40:36.172439');
INSERT INTO "customerx_customers" VALUES(491,'宁海县辰枫砂石加工厂','辰枫砂石加','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:41:32.291513','2013-08-09 05:41:32.291513');
INSERT INTO "customerx_customers" VALUES(492,'宁波南天金属有限公司','南天金属','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:43:01.002278','2013-08-09 05:43:01.002278');
INSERT INTO "customerx_customers" VALUES(493,'宁波旭东新盛汽配有限公司','旭东新盛汽配','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:44:24.062275','2013-08-09 05:44:24.062275');
INSERT INTO "customerx_customers" VALUES(494,'宁波永信钢管有限公司','永信钢管','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:45:41.167023','2013-08-09 05:45:41.167023');
INSERT INTO "customerx_customers" VALUES(495,'宁波方正汽车模具有限公司','方正汽车模具','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:46:20.529789','2013-08-09 05:46:20.529789');
INSERT INTO "customerx_customers" VALUES(496,'宁波震裕模具有限公司','震裕模具','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:48:27.237433','2013-08-09 05:48:27.237433');
INSERT INTO "customerx_customers" VALUES(497,'宁波市振佳生物科技有限公司','振佳生物科技','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 05:59:32.766799','2013-08-09 05:59:32.766799');
INSERT INTO "customerx_customers" VALUES(498,'宁海县铭洲文具有限公司','铭洲文具','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:00:31.583126','2013-08-09 06:00:31.583126');
INSERT INTO "customerx_customers" VALUES(499,'宁波双海机械制造有限公司','双海机械制造','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:02:35.284672','2013-08-09 06:02:35.284672');
INSERT INTO "customerx_customers" VALUES(500,'宁海杭热热力有限公司','杭热热力','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:05:15.396587','2013-08-09 06:05:15.396587');
INSERT INTO "customerx_customers" VALUES(501,'宁波世裕金属制品有限公司','世裕金属制品','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:10:33.230238','2013-08-09 06:10:33.230238');
INSERT INTO "customerx_customers" VALUES(502,'宁海县正伟金属制品厂','正伟金属制品','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:13:07.104566','2013-08-09 06:13:07.104566');
INSERT INTO "customerx_customers" VALUES(503,'宁海县永乐电器有限公司','永乐电器','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:16:23.674316','2013-08-09 06:16:23.674316');
INSERT INTO "customerx_customers" VALUES(504,'宁波会通磁电科技有限公司','会通磁电科技','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:19:42.097543','2013-08-09 06:19:42.097543');
INSERT INTO "customerx_customers" VALUES(505,'宁波双林汽车部件股份有限公司','双林汽车部件','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:21:22.898967','2013-08-09 06:21:22.898967');
INSERT INTO "customerx_customers" VALUES(506,'宁海鑫城汽车配件有限公司','鑫城汽车配件','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:23:22.384617','2013-08-09 06:23:22.384617');
INSERT INTO "customerx_customers" VALUES(507,'宁海县远颂机械工具有限公司','远颂机械工具','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:25:26.072233','2013-08-09 06:25:26.072233');
INSERT INTO "customerx_customers" VALUES(508,'宁波健民电器有限公司','健民电器','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:27:08.300406','2013-08-09 06:27:08.300406');
INSERT INTO "customerx_customers" VALUES(509,'宁波中天家居用品有限公司','中天家居用品','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:27:49.654128','2013-08-09 06:27:49.654128');
INSERT INTO "customerx_customers" VALUES(510,'宁波华远旅游用品有限公司','华远旅游用品','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:28:45.652988','2013-08-09 06:28:45.652988');
INSERT INTO "customerx_customers" VALUES(511,'宁波志清实业有限公司','志清实业','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:29:46.942481','2013-08-09 06:29:46.942481');
INSERT INTO "customerx_customers" VALUES(512,'宁波兰迪汽配工业有限公司','兰迪汽配工业','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:31:00.986110','2013-08-09 06:31:00.986110');
INSERT INTO "customerx_customers" VALUES(513,'宁波盛绵针织制衣有限公司','盛绵针织制衣','2012-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:32:20.249248','2013-08-09 06:32:20.249248');
INSERT INTO "customerx_customers" VALUES(514,'宁海县宁兴纸业有限公司','宁兴纸业','2012-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:33:18.887917','2013-08-09 06:33:18.887917');
INSERT INTO "customerx_customers" VALUES(515,'宁海县得胜新型材料有限公司','得胜新型材料','0212-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-09 06:34:13.375083','2013-08-09 06:34:13.375083');
INSERT INTO "customerx_customers" VALUES(516,'宁波甬抚机械有限公司','甬抚机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:45:45.361065','2013-08-12 00:45:45.361065');
INSERT INTO "customerx_customers" VALUES(517,'宁波成展精密机械有限公司','成展精密机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:49:22.674909','2013-08-12 00:49:22.674909');
INSERT INTO "customerx_customers" VALUES(518,'宁波蓝野医疗器械有限公司','蓝野医疗器械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:55:15.040207','2013-08-12 00:55:15.040207');
INSERT INTO "customerx_customers" VALUES(519,'慈溪日升机械轴承有限公司','日升机械轴承','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:55:52.853660','2013-08-12 00:55:52.853660');
INSERT INTO "customerx_customers" VALUES(520,'浙江洛兹股份有限公司','洛兹股份','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:57:04.453836','2013-08-12 00:57:04.453836');
INSERT INTO "customerx_customers" VALUES(521,'慈溪市飞羚电器有限公司','飞羚电器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:57:50.024953','2013-08-12 00:57:50.024953');
INSERT INTO "customerx_customers" VALUES(522,'宁波横河模具股份有限公司','横河模具股份','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 00:59:41.161900','2013-08-12 00:59:41.161900');
INSERT INTO "customerx_customers" VALUES(523,'宁波市鄞州百慕铝业有限公司','百慕铝业','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:00:26.529876','2013-08-12 01:00:26.529876');
INSERT INTO "customerx_customers" VALUES(524,'奉化市星际机械铸造有限公司','星际机械铸造','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:02:06.872571','2013-08-12 01:02:06.872571');
INSERT INTO "customerx_customers" VALUES(525,'宁波富仕达电力工程有限责任公司','富仕达电力工程','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:03:27.804046','2013-08-12 01:03:27.804046');
INSERT INTO "customerx_customers" VALUES(526,'宁波太古新材料科技有限公司','太古新材料科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:04:23.464157','2013-08-12 01:04:23.464157');
INSERT INTO "customerx_customers" VALUES(527,'宁波市北仑公共交通有限公司','公共交通','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:05:11.919029','2013-08-12 01:05:11.919029');
INSERT INTO "customerx_customers" VALUES(528,'宁波博旺机械有限公司','博旺机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:06:59.273976','2013-08-12 01:06:59.273976');
INSERT INTO "customerx_customers" VALUES(529,'三生（中国）健康产业有限公司','三生健康产业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:08:49.571316','2013-08-12 01:08:49.571316');
INSERT INTO "customerx_customers" VALUES(530,'宁波路润冷却器制造有限公司','路润冷却器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:17:26.074367','2013-08-12 01:17:26.074367');
INSERT INTO "customerx_customers" VALUES(531,'宁波华朔模具机械有限公司','华朔模具机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 01:18:37.892222','2013-08-12 01:18:37.892222');
INSERT INTO "customerx_customers" VALUES(532,'宁波惠杰钢管制造有限公司','惠杰钢管','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:39:18.293524','2013-08-12 05:39:18.293524');
INSERT INTO "customerx_customers" VALUES(533,'宁波龙宇光电科技有限公司','龙宇光电科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:40:22.023098','2013-08-12 05:40:22.023098');
INSERT INTO "customerx_customers" VALUES(534,'宁波大千纺织品有限公司','大千纺织品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:41:33.711791','2013-08-12 05:41:33.711791');
INSERT INTO "customerx_customers" VALUES(535,'宁波市鄞州科威机械制造有限公司','科威机械','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:42:50.033159','2013-08-12 05:42:50.033159');
INSERT INTO "customerx_customers" VALUES(536,'宁波市鄞州区邱隘镇渔金村经济合作社','渔金村经济合作社','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:43:55.494807','2013-08-12 05:43:55.494807');
INSERT INTO "customerx_customers" VALUES(537,'宁波置信非晶科技发展有限公司','置信非晶科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:46:26.146723','2013-08-12 05:46:26.146723');
INSERT INTO "customerx_customers" VALUES(538,'宁波新乐电器有限公司','新乐电器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:48:00.886510','2013-08-12 05:48:00.886510');
INSERT INTO "customerx_customers" VALUES(539,'奉化郑万利酒业有限公司','郑万利酒业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:49:34.359036','2013-08-12 05:49:34.359036');
INSERT INTO "customerx_customers" VALUES(540,'海伦钢琴股份有限公司','海伦钢琴股份','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:50:40.904874','2013-08-12 05:50:40.904874');
INSERT INTO "customerx_customers" VALUES(541,'奉化同盛混凝土有限公司','同盛混凝土','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:56:07.167557','2013-08-12 05:56:07.167557');
INSERT INTO "customerx_customers" VALUES(542,'宁波米氏实业有限公司','米氏实业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:57:19.530668','2013-08-12 05:57:19.530668');
INSERT INTO "customerx_customers" VALUES(543,'宁波市鄞州福基机械配件厂','福基机械','2013-01-01','',1,11,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 05:58:38.635606','2013-08-12 05:58:38.635606');
INSERT INTO "customerx_customers" VALUES(544,'宁波市远扬新型建材科技有限公司','远扬新型建材','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:03:06.674341','2013-08-12 06:03:06.674341');
INSERT INTO "customerx_customers" VALUES(545,'宁波市鄞州茅山电镀有限公司','茅山电镀','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:03:47.836588','2013-08-12 06:03:47.836588');
INSERT INTO "customerx_customers" VALUES(546,'宁波腾扬金属制品有限公司','腾扬金属制品','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:04:34.813511','2013-08-12 06:04:34.813511');
INSERT INTO "customerx_customers" VALUES(547,'宁波哈泰雷碳化物有限公司','哈泰雷碳化物','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:05:42.384537','2013-08-12 06:05:42.384537');
INSERT INTO "customerx_customers" VALUES(548,'余姚市四明湖灌区续建配套工程项目办公室','四明湖灌区','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:06:52.255467','2013-08-12 06:06:52.255467');
INSERT INTO "customerx_customers" VALUES(549,'宁波津和建材科技发展有限公司','津和建材','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:09:27.575142','2013-08-12 06:09:27.575142');
INSERT INTO "customerx_customers" VALUES(550,'宁波永昌水电安装工程有限公司','永昌水电安装工程','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:11:41.498679','2013-08-12 06:11:41.498679');
INSERT INTO "customerx_customers" VALUES(551,'宁波江花玻璃科技有限公司','江花玻璃科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:14:02.589298','2013-08-12 06:14:02.589298');
INSERT INTO "customerx_customers" VALUES(552,'宁波汇通机械联接件有限公司','汇通机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:15:30.889460','2013-08-12 06:15:30.889460');
INSERT INTO "customerx_customers" VALUES(553,'宁波中策电子有限公司','中策电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:17:37.144822','2013-08-12 06:17:37.144822');
INSERT INTO "customerx_customers" VALUES(554,'宁波杭州湾新区岳英塑料加工厂','岳英塑料加工厂','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:27:02.465203','2013-08-12 06:27:02.465203');
INSERT INTO "customerx_customers" VALUES(555,'喜海锅业有限公司','喜海锅业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:28:04.630871','2013-08-12 06:28:04.630871');
INSERT INTO "customerx_customers" VALUES(556,'宁波市天衡制药有限公司','宁波天衡制药','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:29:48.852589','2013-08-12 06:29:48.852589');
INSERT INTO "customerx_customers" VALUES(557,'宁波朗沃矿业技术有限公司','朗沃矿业技术','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:30:33.941635','2013-08-12 06:30:33.941635');
INSERT INTO "customerx_customers" VALUES(558,'宁波继峰汽车零部件股份有限公司','继峰汽车零部件','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:31:40.973391','2013-08-12 06:31:40.973391');
INSERT INTO "customerx_customers" VALUES(559,'宁波三和印刷有限公司','三和印刷','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:32:29.781775','2013-08-12 06:32:29.781775');
INSERT INTO "customerx_customers" VALUES(560,'宁波市群星粉末冶金有限公司','群星粉末冶金','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:33:22.009563','2013-08-12 06:33:22.009563');
INSERT INTO "customerx_customers" VALUES(561,'宁波远东汽车部件制造有限公司','远东汽车部件','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:35:01.065572','2013-08-12 06:35:01.065572');
INSERT INTO "customerx_customers" VALUES(562,'宁波华路汽车电器有限公司','华路汽车电器','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:36:17.751893','2013-08-12 06:36:17.751893');
INSERT INTO "customerx_customers" VALUES(563,'日月重工股份有限公司','日月重工','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:37:11.018506','2013-08-12 06:37:11.018506');
INSERT INTO "customerx_customers" VALUES(564,'宁波友邦塑业有限公司','友邦塑业','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:38:21.783625','2013-08-12 06:39:59.188917');
INSERT INTO "customerx_customers" VALUES(565,'宁波贝泰喜来士有限公司','贝泰喜来士','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:39:44.873931','2013-08-12 06:39:44.873931');
INSERT INTO "customerx_customers" VALUES(566,'宁波鑫远市政预制构件有限公司','鑫远市政预制构件','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:40:41.476558','2013-08-12 06:40:41.476558');
INSERT INTO "customerx_customers" VALUES(567,'依莱克顿（宁波）电器科技有限公司','依莱克顿','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:42:42.608984','2013-08-12 06:42:42.608984');
INSERT INTO "customerx_customers" VALUES(568,'宁波市东城华泰石业有限公司','东城华泰石业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:43:55.749886','2013-08-12 06:43:55.749886');
INSERT INTO "customerx_customers" VALUES(569,'宁波永鋐电子科技有限公司','永鋐电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:46:15.459403','2013-08-12 06:46:15.459403');
INSERT INTO "customerx_customers" VALUES(570,'宁波众博锁业有限公司','众博锁业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:47:02.245900','2013-08-12 06:47:02.245900');
INSERT INTO "customerx_customers" VALUES(571,'奉化市荣柯商标织造有限公司','荣柯商标织造','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:48:23.083724','2013-08-12 06:48:23.083724');
INSERT INTO "customerx_customers" VALUES(572,'乐仕（宁波）服饰有限公司','乐仕服饰','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:49:51.995328','2013-08-12 06:49:51.995328');
INSERT INTO "customerx_customers" VALUES(573,'宁波隆泰彩色印刷有限公司','隆泰彩色印刷','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:50:38.457397','2013-08-12 06:50:38.457397');
INSERT INTO "customerx_customers" VALUES(574,'宁波市鄞州高桥岐阳砖瓦有限公司','高桥岐阳砖瓦','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:51:30.707246','2013-08-12 06:51:30.707246');
INSERT INTO "customerx_customers" VALUES(575,'奉化君悦塑料制品有限公司','君悦塑料制品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:52:20.852562','2013-08-12 06:52:20.852562');
INSERT INTO "customerx_customers" VALUES(576,'奉化市龙津船用柴油机有限公司','龙津船用柴油机','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:53:02.473188','2013-08-12 06:53:02.473188');
INSERT INTO "customerx_customers" VALUES(577,'宁波优耐特电子有限公司','优耐特电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:54:20.410673','2013-08-12 06:54:20.410673');
INSERT INTO "customerx_customers" VALUES(578,'宁波市正一砼泵配件有限公司','正一砼泵配件','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:55:21.355098','2013-08-12 06:55:21.355098');
INSERT INTO "customerx_customers" VALUES(579,'宁波飞驹工具有限公司','飞驹工具','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:56:04.281048','2013-08-12 06:56:04.281048');
INSERT INTO "customerx_customers" VALUES(580,'爱伊美集团有限公司','爱伊美集团','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:57:23.573417','2013-08-12 06:57:23.573417');
INSERT INTO "customerx_customers" VALUES(581,'宁波昌隆机电有限公司','昌隆机电','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:58:27.163743','2013-08-12 06:58:27.163743');
INSERT INTO "customerx_customers" VALUES(582,'宁波市鄞州柏欧金属制品有限公司','柏欧金属制品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 06:59:14.328401','2013-08-12 06:59:14.328401');
INSERT INTO "customerx_customers" VALUES(583,'宁波康华热收缩材料有限公司','康华热收缩材料','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:00:05.659127','2013-08-12 07:00:05.659127');
INSERT INTO "customerx_customers" VALUES(584,'宁波华东旭丰纺织品有限公司','华东旭丰纺织品','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:01:00.140490','2013-08-12 07:01:00.140490');
INSERT INTO "customerx_customers" VALUES(585,'奉化市萧王庙顺丰弹簧厂','萧王庙顺丰弹簧厂','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:01:38.671387','2013-08-12 07:01:38.671387');
INSERT INTO "customerx_customers" VALUES(586,'建新赵氏集团有限公司','建新赵氏','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:02:36.616105','2013-08-12 07:02:36.616105');
INSERT INTO "customerx_customers" VALUES(587,'宁波维华砂业有限公司','维华砂业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:04:10.759751','2013-08-12 07:04:10.759751');
INSERT INTO "customerx_customers" VALUES(588,'宁波市龙佰矿业有限公司','龙佰矿业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:05:03.618407','2013-08-12 07:05:03.618407');
INSERT INTO "customerx_customers" VALUES(589,'宁波万航实业有限公司','万航实业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:06:17.008064','2013-08-12 07:06:17.008064');
INSERT INTO "customerx_customers" VALUES(590,'高择（宁波）科技有限公司','高择科技','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:07:13.376838','2013-08-12 07:07:13.376838');
INSERT INTO "customerx_customers" VALUES(591,'宁波小星星车业有限公司','小星星车业','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:08:01.624834','2013-08-12 07:08:01.624834');
INSERT INTO "customerx_customers" VALUES(592,'宁波市宏丰生物质燃料有限公司','宏丰生物质燃料','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:08:48.002744','2013-08-12 07:08:48.002744');
INSERT INTO "customerx_customers" VALUES(593,'奉化祥盛纸业有限公司','祥盛纸业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:09:25.148305','2013-08-12 07:09:25.148305');
INSERT INTO "customerx_customers" VALUES(594,'奉化市福裕冷冻厂','福裕冷冻厂','2013-01-01','',1,3,'1111','1111',4,'t',4,NULL,'','','','','','','','2013-08-12 07:09:58.638384','2013-09-12 19:48:36.800784');
INSERT INTO "customerx_customers" VALUES(595,'宁波市鄞州区古林镇礼嘉桥村经济合作社','礼嘉桥村经济合作社','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:10:38.676751','2013-08-12 07:10:38.676751');
INSERT INTO "customerx_customers" VALUES(596,'宁波利安电子有限公司','利安电子','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:11:25.508207','2013-08-12 07:11:25.508207');
INSERT INTO "customerx_customers" VALUES(597,'宁波洛祥药业有限公司','洛祥药业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:12:23.065325','2013-08-12 07:12:23.065325');
INSERT INTO "customerx_customers" VALUES(598,'宁波翰文电器有限公司','翰文电器','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:13:09.007507','2013-08-12 07:13:09.007507');
INSERT INTO "customerx_customers" VALUES(599,'宁波市鄞州华康工程液压件厂（普通合伙）','华康工程液压件','2013-01-01','',7,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:13:51.042936','2013-08-12 07:13:51.042936');
INSERT INTO "customerx_customers" VALUES(600,'余姚市广播电视台','余姚广播电视台','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:15:14.002153','2013-08-12 07:15:14.002153');
INSERT INTO "customerx_customers" VALUES(601,'余姚煊华电器有限公司','煊华电器','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:15:51.205580','2013-08-12 07:15:51.205580');
INSERT INTO "customerx_customers" VALUES(602,'余姚航顺电器有限公司','航顺电器','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:16:49.054110','2013-08-12 07:16:49.054110');
INSERT INTO "customerx_customers" VALUES(603,'宁波日月不锈钢制品有限公司','日月不锈钢制品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:17:54.676811','2013-08-12 07:17:54.676811');
INSERT INTO "customerx_customers" VALUES(604,'宁波诚毅纸业有限公司','诚毅纸业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:18:43.203748','2013-08-12 07:18:43.203748');
INSERT INTO "customerx_customers" VALUES(605,'宁波丰盛食品有限公司','丰盛食品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:19:51.778217','2013-08-12 07:19:51.778217');
INSERT INTO "customerx_customers" VALUES(606,'宁波西禾液晶支架配件制造有限公司','西禾液晶支架配件','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:20:36.781657','2013-08-12 07:20:36.781657');
INSERT INTO "customerx_customers" VALUES(607,'宁波亿而高车业科技有限公司','亿而高车业','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:22:13.424882','2013-08-12 07:22:13.424882');
INSERT INTO "customerx_customers" VALUES(608,'宁波鑫洋竹制品有限公司','鑫洋竹制品','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:23:25.806109','2013-08-12 07:23:25.806109');
INSERT INTO "customerx_customers" VALUES(609,'宁波耐特电力设备部件有限公司','耐特电力设备','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:24:11.635213','2013-08-12 07:24:11.635213');
INSERT INTO "customerx_customers" VALUES(610,'宁波安东新材料有限公司','安东新材料','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:25:40.067909','2013-08-12 07:25:40.067909');
INSERT INTO "customerx_customers" VALUES(611,'奉化宁兴丰田汽车销售服务有限公司','宁兴丰田汽车销售服务','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:26:53.068584','2013-08-12 07:26:53.068584');
INSERT INTO "customerx_customers" VALUES(612,'宁波盛技机械有限公司','盛技机械','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:27:43.835376','2013-08-12 07:27:43.835376');
INSERT INTO "customerx_customers" VALUES(613,'宁波昊阳新材料科技有限公司','昊阳新材料','2013-01-01','',6,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:29:16.041295','2013-08-12 07:29:16.041295');
INSERT INTO "customerx_customers" VALUES(614,'宁波环球广电科技有限公司','环球广电科技','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:30:15.373101','2013-08-12 07:30:15.373101');
INSERT INTO "customerx_customers" VALUES(615,'宁波联友精密制造有限公司','联友精密制造','2013-01-01','',1,3,'1111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:31:21.124185','2013-08-12 07:31:21.124185');
INSERT INTO "customerx_customers" VALUES(616,'奉化怡人机械厂','怡人机械','2013-01-01','',1,3,'11111','1111',4,'t',2,NULL,'','','','','','','','2013-08-12 07:31:58.973130','2013-09-09 01:59:15.527289');
DROP TABLE IF EXISTS "customerx_sales_leads";
CREATE TABLE "customerx_sales_leads" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "customer_id" integer, "last_updated_by_id" integer, "provider_id" integer, "lead_info" text, "contact_instruction" text, "lead_status" varchar(255), "lead_eval" text, "sale_success" boolean, "close_lead" boolean, "close_lead_date" datetime, "close_lead_by_id" integer, "lead_source_id" integer, "lead_quality" integer, "lead_accuracy" integer, "subject" varchar(255), "lead_date" date, "initial_order_total" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
DROP TABLE IF EXISTS "event_taskx_event_tasks";
CREATE TABLE "event_taskx_event_tasks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "resource_id" integer, "resource_string" varchar(255), "wfid" varchar(255), "task_category" varchar(255), "name" varchar(255), "instruction" text, "description" text, "task_status_id" integer, "start_datetime" datetime, "finish_datetime" datetime, "cancelled" boolean DEFAULT 'f', "completed" boolean DEFAULT 'f', "expedite" boolean DEFAULT 'f', "last_updated_by_id" integer, "requested_by_id" integer, "executioner_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
DROP TABLE IF EXISTS "projectx_contracts";
CREATE TABLE "projectx_contracts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "project_id" integer, "contract_amount" decimal(10,2), "other_charge" decimal(10,2), "payment_term" integer, "payment_agreement" text, "paid_out" boolean DEFAULT 'f', "signed" boolean DEFAULT 'f', "sign_date" date, "signed_by_id" integer, "contract_on_file" boolean DEFAULT 'f', "last_updated_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_contracts" VALUES(1,1,25000,NULL,NULL,'','f','t','2013-06-02',2,'f',2,'2013-06-03 15:20:00.969711','2013-07-05 07:58:47.300011');
INSERT INTO "projectx_contracts" VALUES(2,2,25000,NULL,NULL,'','f','f',NULL,NULL,'f',NULL,'2013-07-05 06:55:54.494626','2013-07-05 06:55:54.494626');
INSERT INTO "projectx_contracts" VALUES(3,3,10000,NULL,NULL,'签约一半，完成一半','f','t',NULL,NULL,'f',NULL,'2013-07-05 08:16:25.259858','2013-07-05 08:16:25.259858');
INSERT INTO "projectx_contracts" VALUES(4,4,50000,NULL,NULL,'签约付一半，通过后付一半。','t','f',NULL,NULL,'f',NULL,'2013-09-07 07:09:06.120614','2013-09-08 00:36:59.811911');
INSERT INTO "projectx_contracts" VALUES(5,5,10000,NULL,NULL,'','f','f',NULL,NULL,'f',NULL,'2013-09-12 20:21:07.093850','2013-09-12 20:21:07.093850');
DROP TABLE IF EXISTS "projectx_payments";
CREATE TABLE "projectx_payments" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "contract_id" integer, "paid_amount" decimal(10,2), "received_date" date, "received_by_id" integer, "payment_desc" text, "payment_type" varchar(255), "last_updated_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_payments" VALUES(1,4,120,'2013-09-09',4,'','转账',2,'2013-09-09 00:37:22.355067','2013-09-09 00:37:22.355067');
INSERT INTO "projectx_payments" VALUES(2,4,150,'2013-09-12',4,'','现金',4,'2013-09-12 18:57:32.381365','2013-09-12 18:57:32.381365');
DROP TABLE IF EXISTS "projectx_project_task_templates";
CREATE TABLE "projectx_project_task_templates" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "type_definition_id" integer, "last_updated_by_id" integer, "active" boolean DEFAULT 't', "instruction" text, "ranking_order" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_project_task_templates" VALUES(1,'2012通用清洁生产模板',1,2,'t','最常见、最多数的情况',100,'2013-06-10 03:02:14.110598','2013-09-07 06:52:39.207638');
INSERT INTO "projectx_project_task_templates" VALUES(2,'行业整治清洁生产模板',1,2,'t','华研',101,'2013-07-05 06:16:27.537925','2013-08-25 07:37:56.618353');
INSERT INTO "projectx_project_task_templates" VALUES(3,'通用能源审计类',3,2,'t','华研','2013-07-05 06:18:03.382352','2013-07-05 06:18:03.382352',5);
INSERT INTO "projectx_project_task_templates" VALUES(4,'节能评估通用模板',2,2,'t','华研','2013-07-05 08:12:07.534146','2013-07-05 08:12:07.534146',2);
DROP TABLE IF EXISTS "projectx_projects";
CREATE TABLE "projectx_projects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "project_num" varchar(255), "customer_id" integer, "project_task_template_id" integer, "project_desp" text, "sales_id" integer, "start_date" date, "end_date" date, "delivery_date" date, "estimated_delivery_date" date, "project_instruction" text, "project_manager_id" integer, "cancelled" boolean DEFAULT 'f', "completed" boolean DEFAULT 'f', "last_updated_by_id" integer, "expedite" boolean DEFAULT 'f', "status_id" integer, "project_date" date, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_projects" VALUES(1,'宁波金丰电子有限公司能源审计','20130603-112233-636',1,3,'这是一个测试项目',4,'2013-06-05',NULL,NULL,'2013-06-30','没有具体指示',18,'f','f',2,'t',19,NULL,'2013-06-03 15:20:00.966608','2013-07-05 07:16:01.077741');
INSERT INTO "projectx_projects" VALUES(2,'宁波禾顺新材料有限公司能源审计','20130705-112788-823',4,3,'',2,'2013-07-01',NULL,NULL,'2013-10-15','',18,'f','f',2,'f',21,NULL,'2013-07-05 06:55:54.491682','2013-07-05 07:04:52.013427');
INSERT INTO "projectx_projects" VALUES(3,'宁波北仑宇创机械工业有限公司节能评估','20130705-113343-175',8,2,'',4,'2013-07-01',NULL,NULL,'2013-07-31','',13,'f','f',2,'f',26,NULL,'2013-07-05 08:16:25.258186','2013-07-05 08:24:09.318125');
INSERT INTO "projectx_projects" VALUES(4,'宁波海伦钢琴股份有限公司清洁生产','20130907-113898-968',9,1,'test',4,'2013-01-01',NULL,'2013-09-13','2013-10-31','',20,'f','f',4,'f',NULL,NULL,'2013-09-07 07:09:06.117607','2013-09-12 16:50:07.733329');
INSERT INTO "projectx_projects" VALUES(5,'test','20130912-114453-690',453,2,'',4,'2013-09-12',NULL,NULL,NULL,'',NULL,'f','f',4,'f',NULL,NULL,'2013-09-12 20:21:07.082843','2013-09-12 20:21:07.082843');
DROP TABLE IF EXISTS "projectx_task_definitions";
CREATE TABLE "projectx_task_definitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "task_desp" varchar(255), "task_instruction" text, "last_updated_by_id" integer, "ranking_order" integer, "active" boolean DEFAULT 't', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_task_definitions" VALUES(1,'项目签约','','',2,1,'t','2013-05-17 02:16:53.725529','2013-05-25 00:18:30.931881');
INSERT INTO "projectx_task_definitions" VALUES(2,'项目实施','','',2,2,'t','2013-05-17 02:17:09.864621','2013-05-25 00:18:43.912354');
INSERT INTO "projectx_task_definitions" VALUES(3,'送审稿装订','','',2,3,'t','2013-05-17 02:17:44.723053','2013-09-07 06:47:21.408425');
INSERT INTO "projectx_task_definitions" VALUES(4,'修正稿装订','','',2,4,'t','2013-05-25 00:19:09.161007','2013-09-07 06:47:44.903975');
INSERT INTO "projectx_task_definitions" VALUES(5,'修正稿报告寄送','','',2,5,'t','2013-05-25 00:19:23.238203','2013-09-07 06:48:37.553229');
INSERT INTO "projectx_task_definitions" VALUES(6,'首款发票开具','','',2,6,'t','2013-05-25 00:19:34.608546','2013-09-07 06:49:07.119637');
INSERT INTO "projectx_task_definitions" VALUES(7,'首款发票寄送','','',2,7,'t','2013-05-25 00:19:48.096747','2013-09-07 06:49:40.018912');
INSERT INTO "projectx_task_definitions" VALUES(8,'首款付入','','一般55方式',2,8,'t','2013-05-26 07:13:12.875757','2013-06-10 02:57:33.434078');
INSERT INTO "projectx_task_definitions" VALUES(9,'项目完成结束','','出具报告，验收完成，款项付清，发票寄送到。',2,9,'t','2013-06-10 00:41:58.064235','2013-09-07 06:55:30.264601');
INSERT INTO "projectx_task_definitions" VALUES(10,'项目搁置','','暂停实施',2,10,'t','2013-06-10 00:42:29.227121','2013-06-10 00:43:21.986576');
INSERT INTO "projectx_task_definitions" VALUES(11,'项目中止','','',2,11,'t','2013-06-10 00:43:04.619662','2013-06-10 00:43:04.619662');
INSERT INTO "projectx_task_definitions" VALUES(12,'签约前的联系','','',2,1,'t','2013-06-10 02:50:45.500742','2013-09-07 06:46:51.777444');
INSERT INTO "projectx_task_definitions" VALUES(13,'项目分配','','',2,1,'t','2013-06-10 02:51:05.101981','2013-06-10 02:51:20.643186');
INSERT INTO "projectx_task_definitions" VALUES(14,'送审稿完成','','',2,2,'t','2013-06-10 02:51:51.129595','2013-06-10 02:51:51.129595');
INSERT INTO "projectx_task_definitions" VALUES(15,'修正稿完成','','',2,3,'t','2013-06-10 02:52:07.975634','2013-06-10 02:52:07.975634');
INSERT INTO "projectx_task_definitions" VALUES(16,'报批稿完成','','',2,3,'t','2013-06-10 02:52:18.595446','2013-06-10 02:52:18.595446');
INSERT INTO "projectx_task_definitions" VALUES(17,'第二笔款','','361或352，一般是能评',2,8,'t','2013-06-10 02:58:25.370610','2013-06-10 02:58:25.370610');
INSERT INTO "projectx_task_definitions" VALUES(18,'余款付入','','多数情况只付2次，首款和余款',2,8,'t','2013-06-10 02:58:56.491050','2013-06-10 02:58:56.491050');
INSERT INTO "projectx_task_definitions" VALUES(19,'设备用能测试','','主要用能设备的能效',2,12,'t','2013-07-05 06:07:50.445563','2013-07-05 06:08:02.673417');
INSERT INTO "projectx_task_definitions" VALUES(20,'报告完成','','',2,13,'t','2013-07-05 06:08:21.372390','2013-07-05 06:08:33.378577');
INSERT INTO "projectx_task_definitions" VALUES(21,'全款付入','','',2,14,'t','2013-07-05 06:20:58.141346','2013-07-05 06:20:58.141346');
INSERT INTO "projectx_task_definitions" VALUES(22,'报批稿装订','','',2,4,'t','2013-09-07 06:48:09.810429','2013-09-07 06:48:09.810429');
INSERT INTO "projectx_task_definitions" VALUES(23,'余款发票开具','','',2,6,'t','2013-09-07 06:49:27.781696','2013-09-07 06:49:27.781696');
INSERT INTO "projectx_task_definitions" VALUES(24,'余款发票寄送','','',2,7,'t','2013-09-07 06:49:53.454607','2013-09-07 06:49:53.454607');
DROP TABLE IF EXISTS "projectx_task_requests";
CREATE TABLE "projectx_task_requests" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "task_id" integer, "request_date" date, "expedite" boolean DEFAULT 'f', "expected_finish_date" date, "request_content" text, "need_delivery" boolean DEFAULT 'f', "what_to_deliver" text, "delivery_instruction" text, "requested_by_id" integer, "last_updated_by_id" integer, "completed" boolean DEFAULT 'f', "cancelled" boolean DEFAULT 'f', "request_status_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
DROP TABLE IF EXISTS "projectx_task_templates";
CREATE TABLE "projectx_task_templates" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "project_task_template_id" integer, "task_definition_id" integer, "execution_order" integer, "execution_sub_order" integer, "start_before_previous_completed" boolean DEFAULT 'f', "brief_note" text, "need_request" boolean DEFAULT 'f', "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_task_templates" VALUES(1,1,12,1,NULL,'f','','t','2013-06-10 17:34:18.201479','2013-08-27 02:53:47.391710');
INSERT INTO "projectx_task_templates" VALUES(2,1,1,2,NULL,'t','','f','2013-06-10 17:34:52.327702','2013-08-27 03:33:58.014901');
INSERT INTO "projectx_task_templates" VALUES(3,2,1,1,1,'f','','f','2013-07-05 06:16:27.540549','2013-07-05 06:16:27.540549');
INSERT INTO "projectx_task_templates" VALUES(4,2,13,2,NULL,'t','','f','2013-07-05 06:16:27.542275','2013-07-05 06:16:27.542275');
INSERT INTO "projectx_task_templates" VALUES(5,2,2,3,NULL,'t','','f','2013-07-05 06:16:27.543308','2013-07-05 06:16:27.543308');
INSERT INTO "projectx_task_templates" VALUES(6,3,1,1,NULL,'f','','f','2013-07-05 06:18:03.383743','2013-07-05 06:18:03.383743');
INSERT INTO "projectx_task_templates" VALUES(7,3,13,2,NULL,'t','','f','2013-07-05 06:18:03.384797','2013-07-05 06:18:03.384797');
INSERT INTO "projectx_task_templates" VALUES(8,3,2,3,NULL,'t','','f','2013-07-05 06:18:03.385764','2013-07-05 06:18:03.385764');
INSERT INTO "projectx_task_templates" VALUES(9,3,19,4,NULL,'f','','f','2013-07-05 06:18:03.386748','2013-07-05 06:18:03.386748');
INSERT INTO "projectx_task_templates" VALUES(10,3,20,5,NULL,'f','','f','2013-07-05 06:18:23.962847','2013-09-09 01:00:05.388102');
INSERT INTO "projectx_task_templates" VALUES(11,3,3,6,NULL,'t','','f','2013-07-05 06:18:44.823695','2013-07-05 06:18:44.823695');
INSERT INTO "projectx_task_templates" VALUES(12,3,4,7,NULL,'f','','f','2013-07-05 06:20:05.429956','2013-07-05 06:20:05.429956');
INSERT INTO "projectx_task_templates" VALUES(13,3,5,8,NULL,'f','','f','2013-07-05 06:20:05.431316','2013-07-05 06:20:05.431316');
INSERT INTO "projectx_task_templates" VALUES(14,3,6,9,NULL,'f','','f','2013-07-05 06:20:05.432276','2013-07-05 06:20:05.432276');
INSERT INTO "projectx_task_templates" VALUES(15,3,7,10,NULL,'f','','f','2013-07-05 06:20:05.433220','2013-07-05 06:20:05.433220');
INSERT INTO "projectx_task_templates" VALUES(16,3,21,11,NULL,'f','','f','2013-07-05 06:22:05.642467','2013-07-05 06:22:05.642467');
INSERT INTO "projectx_task_templates" VALUES(17,4,1,1,NULL,'f','','f','2013-07-05 08:12:07.536718','2013-07-05 08:12:07.536718');
INSERT INTO "projectx_task_templates" VALUES(18,4,13,2,NULL,'f','','f','2013-07-05 08:12:07.538453','2013-07-05 08:12:07.538453');
INSERT INTO "projectx_task_templates" VALUES(19,4,2,3,NULL,'f','','f','2013-07-05 08:12:07.539466','2013-07-05 08:12:07.539466');
INSERT INTO "projectx_task_templates" VALUES(20,4,6,4,NULL,'f','','f','2013-07-05 08:12:07.540444','2013-07-05 08:12:07.540444');
INSERT INTO "projectx_task_templates" VALUES(21,1,13,3,NULL,'t','','f','2013-08-27 02:43:41.413490','2013-09-07 06:30:55.138749');
INSERT INTO "projectx_task_templates" VALUES(22,1,2,4,NULL,'t','','f','2013-08-27 03:30:03.207075','2013-09-07 06:30:55.140121');
INSERT INTO "projectx_task_templates" VALUES(23,1,8,5,NULL,'f','','f','2013-08-27 03:32:34.359887','2013-09-07 06:30:31.182656');
INSERT INTO "projectx_task_templates" VALUES(24,1,6,6,NULL,'f','','t','2013-08-27 03:32:34.361252','2013-09-07 06:34:51.732478');
INSERT INTO "projectx_task_templates" VALUES(25,1,7,7,NULL,'f','','t','2013-09-07 06:34:51.734004','2013-09-07 06:34:51.734004');
INSERT INTO "projectx_task_templates" VALUES(26,1,14,8,NULL,'f','','f','2013-09-07 06:36:05.153037','2013-09-07 06:36:05.153037');
INSERT INTO "projectx_task_templates" VALUES(27,1,3,9,NULL,'f','','t','2013-09-07 06:36:05.154645','2013-09-07 06:51:35.395013');
INSERT INTO "projectx_task_templates" VALUES(28,1,15,10,NULL,'f','','f','2013-09-07 06:36:05.155510','2013-09-07 06:36:05.155510');
INSERT INTO "projectx_task_templates" VALUES(29,1,23,11,NULL,'f','','t','2013-09-07 06:53:51.875225','2013-09-07 06:53:51.875225');
INSERT INTO "projectx_task_templates" VALUES(30,1,24,12,NULL,'f','','t','2013-09-07 06:53:51.876519','2013-09-07 06:53:51.876519');
INSERT INTO "projectx_task_templates" VALUES(31,1,18,13,NULL,'f','','f','2013-09-07 06:53:51.877364','2013-09-07 06:53:51.877364');
INSERT INTO "projectx_task_templates" VALUES(32,1,4,14,NULL,'f','','t','2013-09-07 06:55:14.318148','2013-09-07 06:55:14.318148');
INSERT INTO "projectx_task_templates" VALUES(33,1,5,15,NULL,'f','','t','2013-09-07 06:55:14.319376','2013-09-07 06:55:14.319376');
INSERT INTO "projectx_task_templates" VALUES(34,1,9,16,NULL,'f','','f','2013-09-07 06:55:14.320383','2013-09-07 06:55:14.320383');
DROP TABLE IF EXISTS "projectx_tasks";
CREATE TABLE "projectx_tasks" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "project_id" integer, "brief_note" text, "assigned_to_id" integer, "cancelled" boolean DEFAULT 'f', "completed" boolean DEFAULT 'f', "expedite" boolean DEFAULT 'f', "skipped" boolean DEFAULT 'f', "finish_date" date, "start_date" date, "task_status_definition_id" integer, "task_template_id" integer, "last_updated_by_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_tasks" VALUES(1,1,'',NULL,'f','f','t','f','2013-06-11','2013-06-02',32,1,2,'2013-06-11 03:54:44.851153','2013-06-11 03:54:44.851153');
INSERT INTO "projectx_tasks" VALUES(2,2,'',NULL,'f','f','f','f','2013-07-02','2013-07-01',34,6,2,'2013-07-05 07:06:19.885868','2013-07-05 07:07:26.181409');
INSERT INTO "projectx_tasks" VALUES(3,2,'',NULL,'f','f','f','f','2013-07-02','2013-07-02',34,7,2,'2013-07-05 07:07:39.595184','2013-07-05 07:07:39.595184');
INSERT INTO "projectx_tasks" VALUES(4,2,'',NULL,'f','f','f','f','2013-10-15','2013-07-05',32,8,2,'2013-07-05 07:08:11.283667','2013-07-05 07:08:11.283667');
INSERT INTO "projectx_tasks" VALUES(5,3,'',NULL,'f','f','f','f','2013-07-01','2013-07-01',34,17,2,'2013-07-05 08:20:35.383968','2013-07-05 08:20:35.383968');
INSERT INTO "projectx_tasks" VALUES(6,3,'',NULL,'f','f','f','f','2013-07-03','2013-07-02',34,18,2,'2013-07-05 08:20:47.150533','2013-07-05 08:20:47.150533');
INSERT INTO "projectx_tasks" VALUES(7,3,'',NULL,'f','f','f','f','2013-07-05','2013-07-03',34,19,2,'2013-07-05 08:21:03.972465','2013-07-05 08:21:03.972465');
INSERT INTO "projectx_tasks" VALUES(8,3,'',NULL,'f','f','f','f','2013-07-10','2013-07-05',32,20,2,'2013-07-05 08:21:17.470396','2013-07-05 08:21:17.470396');
INSERT INTO "projectx_tasks" VALUES(9,4,'',NULL,'f','f','f','f','2013-01-19','2013-01-01',34,1,4,'2013-09-07 07:09:43.568769','2013-09-12 18:55:43.218287');
INSERT INTO "projectx_tasks" VALUES(10,4,'',NULL,'f','f','f','f','2013-01-02','2013-01-02',34,2,2,'2013-09-07 07:10:15.766902','2013-09-07 07:10:15.766902');
INSERT INTO "projectx_tasks" VALUES(11,4,'',NULL,'f','f','f','f','2013-01-03','2013-01-03',34,21,2,'2013-09-07 07:10:44.341667','2013-09-07 07:10:44.341667');
INSERT INTO "projectx_tasks" VALUES(12,4,'',NULL,'f','f','f','f','2013-05-01','2013-01-04',35,22,2,'2013-09-07 07:11:26.823049','2013-09-07 07:11:26.823049');
INSERT INTO "projectx_tasks" VALUES(13,4,'',NULL,'f','f','f','f','2013-09-01','2013-01-01',32,23,2,'2013-09-07 07:13:15.873649','2013-09-07 07:13:15.873649');
INSERT INTO "projectx_tasks" VALUES(14,4,'',NULL,'f','f','f','f','2013-09-30','2013-09-01',32,24,2,'2013-09-07 07:13:46.767317','2013-09-07 07:13:46.767317');
INSERT INTO "projectx_tasks" VALUES(15,4,'',NULL,'f','f','f','f','2013-09-30','2013-09-01',32,25,2,'2013-09-07 07:14:01.273859','2013-09-07 07:14:01.273859');
INSERT INTO "projectx_tasks" VALUES(16,4,'',NULL,'f','f','f','f','2013-09-30','2013-09-01',33,26,2,'2013-09-07 07:16:22.586831','2013-09-07 07:16:35.952434');
INSERT INTO "projectx_tasks" VALUES(17,4,'',NULL,'f','f','f','f','2013-10-31','2013-09-01',32,27,2,'2013-09-07 07:16:50.130547','2013-09-07 07:16:50.130547');
INSERT INTO "projectx_tasks" VALUES(18,4,'',NULL,'f','f','f','f','2013-11-30','2013-09-01',32,28,2,'2013-09-07 07:17:11.079831','2013-09-07 07:17:11.079831');
INSERT INTO "projectx_tasks" VALUES(19,4,'',NULL,'f','f','f','f','2013-12-31','2013-11-01',32,29,2,'2013-09-07 07:17:32.514654','2013-09-07 07:17:32.514654');
INSERT INTO "projectx_tasks" VALUES(20,4,'',NULL,'f','f','f','f','2013-12-31','2013-11-01',32,30,2,'2013-09-07 07:18:05.489078','2013-09-07 07:18:05.489078');
INSERT INTO "projectx_tasks" VALUES(21,4,'',NULL,'f','f','f','f','2013-12-31','2013-11-01',32,31,2,'2013-09-07 07:18:24.009587','2013-09-07 07:18:24.009587');
INSERT INTO "projectx_tasks" VALUES(22,4,'',NULL,'f','f','f','f','2013-12-31','2013-11-01',32,32,2,'2013-09-07 07:18:42.069415','2013-09-07 07:18:42.069415');
INSERT INTO "projectx_tasks" VALUES(23,4,'',NULL,'f','f','f','f','2013-12-31','2013-11-01',32,33,2,'2013-09-07 07:19:15.604156','2013-09-07 07:19:15.604156');
INSERT INTO "projectx_tasks" VALUES(24,4,'',NULL,'f','f','t','f','2013-12-31','2013-12-01',32,34,2,'2013-09-07 07:19:43.077611','2013-09-09 00:54:24.098744');
DROP TABLE IF EXISTS "projectx_type_definitions";
CREATE TABLE "projectx_type_definitions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "active" boolean DEFAULT 't', "brief_note" text, "last_updated_by_id" integer, "ranking_order" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "projectx_type_definitions" VALUES(1,'清洁生产','t','',2,1,'2013-05-18 05:56:29.607855','2013-05-18 05:56:29.607855');
INSERT INTO "projectx_type_definitions" VALUES(2,'节能评估','t','',2,2,'2013-05-18 06:01:05.540745','2013-05-18 06:01:05.540745');
INSERT INTO "projectx_type_definitions" VALUES(3,'独立能源审计','t','余姚叫能源效率评估',2,3,'2013-05-18 06:02:10.435940','2013-05-18 06:18:24.929536');
INSERT INTO "projectx_type_definitions" VALUES(4,'配套能源审计','t','清洁生产配套的',2,4,'2013-05-18 06:06:56.411195','2013-05-18 06:06:56.411195');
INSERT INTO "projectx_type_definitions" VALUES(5,'能源监察','t','',2,5,'2013-05-18 06:07:29.185237','2013-05-18 06:07:29.185237');
INSERT INTO "projectx_type_definitions" VALUES(6,'节能量','t','',2,6,'2013-05-18 06:07:47.646608','2013-05-18 06:07:47.646608');
INSERT INTO "projectx_type_definitions" VALUES(7,'创绿','t','省级绿色企业',2,7,'2013-05-18 06:09:48.599168','2013-05-18 06:09:48.599168');
INSERT INTO "projectx_type_definitions" VALUES(8,'政府课题项目','t','淘汰目录、各类规划、科研、课题、产业研究',2,8,'2013-05-18 06:12:27.456707','2013-05-18 06:12:27.456707');
INSERT INTO "projectx_type_definitions" VALUES(9,'环评','t','',2,9,'2013-05-18 06:12:58.843455','2013-05-18 06:12:58.843455');
INSERT INTO "projectx_type_definitions" VALUES(10,'环境后评价类','t','',2,10,'2013-05-18 06:13:54.869179','2013-05-18 06:13:54.869179');
INSERT INTO "projectx_type_definitions" VALUES(11,'企业环保资料类','t','一厂一册、其它非资质要求的资料编制',2,11,'2013-05-18 06:14:40.166292','2013-05-18 06:14:40.166292');
INSERT INTO "projectx_type_definitions" VALUES(12,'可研备案','t','可行性研究报告、备案类报告',2,12,'2013-05-18 06:15:33.112114','2013-05-18 06:15:33.112114');
INSERT INTO "projectx_type_definitions" VALUES(13,'能效对标','t','',2,13,'2013-05-18 06:18:37.761098','2013-05-18 06:18:37.761098');
DROP TABLE IF EXISTS "schema_migrations";
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20130427011428');
INSERT INTO "schema_migrations" VALUES('20130821172347');
INSERT INTO "schema_migrations" VALUES('20130821172348');
INSERT INTO "schema_migrations" VALUES('20130821173123');
INSERT INTO "schema_migrations" VALUES('20130821173124');
INSERT INTO "schema_migrations" VALUES('20130821173125');
INSERT INTO "schema_migrations" VALUES('20130821173126');
INSERT INTO "schema_migrations" VALUES('20130821173127');
INSERT INTO "schema_migrations" VALUES('20130903220413');
INSERT INTO "schema_migrations" VALUES('20130903220414');
INSERT INTO "schema_migrations" VALUES('20130903220415');
INSERT INTO "schema_migrations" VALUES('20130903220416');
INSERT INTO "schema_migrations" VALUES('20130903220417');
INSERT INTO "schema_migrations" VALUES('20130903220418');
INSERT INTO "schema_migrations" VALUES('20130903220419');
INSERT INTO "schema_migrations" VALUES('20130903220420');
INSERT INTO "schema_migrations" VALUES('20130903220421');
INSERT INTO "schema_migrations" VALUES('20130904034651');
INSERT INTO "schema_migrations" VALUES('20130904034652');
INSERT INTO "schema_migrations" VALUES('20130904034653');
INSERT INTO "schema_migrations" VALUES('20130904034654');
INSERT INTO "schema_migrations" VALUES('20130904034655');
INSERT INTO "schema_migrations" VALUES('20130904034656');
INSERT INTO "schema_migrations" VALUES('20130904034657');
INSERT INTO "schema_migrations" VALUES('20130904034658');
INSERT INTO "schema_migrations" VALUES('20130904034659');
INSERT INTO "schema_migrations" VALUES('20130904034660');
INSERT INTO "schema_migrations" VALUES('20130904034661');
INSERT INTO "schema_migrations" VALUES('20130904034662');
INSERT INTO "schema_migrations" VALUES('20130904034707');
INSERT INTO "schema_migrations" VALUES('20130918032808');
INSERT INTO "schema_migrations" VALUES('20130918205214');
CREATE INDEX "index_authentify_engine_configs_on_argument_name" ON "authentify_engine_configs" ("argument_name");
CREATE INDEX "index_authentify_engine_configs_on_engine_name" ON "authentify_engine_configs" ("engine_name");
CREATE INDEX "index_authentify_engine_configs_on_engine_name_and_argument_name" ON "authentify_engine_configs" ("engine_name", "argument_name");
CREATE INDEX "index_authentify_role_definitions_on_manager_role_id" ON "authentify_role_definitions" ("manager_role_id");
CREATE INDEX "index_authentify_sessions_on_session_id" ON "authentify_sessions" ("session_id");
CREATE INDEX "index_authentify_sessions_on_updated_at" ON "authentify_sessions" ("updated_at");
CREATE INDEX "index_authentify_sys_logs_on_user_id" ON "authentify_sys_logs" ("user_id");
CREATE INDEX "index_authentify_sys_logs_on_user_name" ON "authentify_sys_logs" ("user_name");
CREATE INDEX "index_authentify_sys_module_mappings_on_sys_module_id" ON "authentify_sys_module_mappings" ("sys_module_id");
CREATE INDEX "index_authentify_sys_module_mappings_on_sys_user_group_id" ON "authentify_sys_module_mappings" ("sys_user_group_id");
CREATE INDEX "index_authentify_sys_modules_on_module_group_name" ON "authentify_sys_modules" ("module_group_name");
CREATE INDEX "index_authentify_sys_modules_on_module_name" ON "authentify_sys_modules" ("module_name");
CREATE INDEX "index_authentify_sys_user_groups_on_group_type_id" ON "authentify_sys_user_groups" ("group_type_id");
CREATE INDEX "index_authentify_sys_user_groups_on_manager_group_id" ON "authentify_sys_user_groups" ("manager_group_id");
CREATE INDEX "index_authentify_sys_user_groups_on_zone_id" ON "authentify_sys_user_groups" ("zone_id");
CREATE INDEX "index_authentify_user_accesses_on_action" ON "authentify_user_accesses" ("action");
CREATE INDEX "index_authentify_user_accesses_on_action_and_resource" ON "authentify_user_accesses" ("action", "resource");
CREATE INDEX "index_authentify_user_accesses_on_rank" ON "authentify_user_accesses" ("rank");
CREATE INDEX "index_authentify_user_accesses_on_resource" ON "authentify_user_accesses" ("resource");
CREATE INDEX "index_authentify_user_accesses_on_role_definition_id" ON "authentify_user_accesses" ("role_definition_id");
CREATE INDEX "index_authentify_user_levels_on_sys_user_group_id" ON "authentify_user_levels" ("sys_user_group_id");
CREATE INDEX "index_authentify_user_levels_on_user_id" ON "authentify_user_levels" ("user_id");
CREATE INDEX "index_authentify_user_roles_on_role_definition_id" ON "authentify_user_roles" ("role_definition_id");
CREATE INDEX "index_authentify_user_roles_on_user_id" ON "authentify_user_roles" ("user_id");
CREATE INDEX "index_authentify_users_on_email" ON "authentify_users" ("email");
CREATE INDEX "index_authentify_users_on_name" ON "authentify_users" ("name");
CREATE INDEX "index_authentify_users_on_status" ON "authentify_users" ("status");
CREATE INDEX "index_authentify_zones_on_id_and_active" ON "authentify_zones" ("id", "active");
CREATE INDEX "index_commonx_logs_on_resource_id" ON "commonx_logs" ("resource_id");
CREATE INDEX "index_commonx_logs_on_resource_id_and_resource_name" ON "commonx_logs" ("resource_id", "resource_name");
CREATE INDEX "index_commonx_logs_on_resource_name" ON "commonx_logs" ("resource_name");
CREATE INDEX "index_commonx_misc_definitions_on_active" ON "commonx_misc_definitions" ("active");
CREATE INDEX "index_commonx_misc_definitions_on_active_and_for_which" ON "commonx_misc_definitions" ("active", "for_which");
CREATE INDEX "index_commonx_misc_definitions_on_for_which" ON "commonx_misc_definitions" ("for_which");
CREATE INDEX "index_commonx_search_stat_configs_on_resource_name" ON "commonx_search_stat_configs" ("resource_name");
CREATE INDEX "index_customerx_customer_comm_records_on_comm_date" ON "customerx_customer_comm_records" ("comm_date");
CREATE INDEX "index_customerx_customer_comm_records_on_customer_id" ON "customerx_customer_comm_records" ("customer_id");
CREATE INDEX "index_customerx_customer_comm_records_on_reported_by_id" ON "customerx_customer_comm_records" ("reported_by_id");
CREATE INDEX "index_customerx_customer_comm_records_on_subject" ON "customerx_customer_comm_records" ("subject");
CREATE INDEX "index_customerx_customers_on_active" ON "customerx_customers" ("active");
CREATE INDEX "index_customerx_customers_on_customer_status_category_id" ON "customerx_customers" ("customer_status_category_id");
CREATE INDEX "index_customerx_customers_on_name" ON "customerx_customers" ("name");
CREATE INDEX "index_customerx_customers_on_sales_id" ON "customerx_customers" ("sales_id");
CREATE INDEX "index_customerx_customers_on_since_date" ON "customerx_customers" ("since_date");
CREATE INDEX "index_customerx_customers_on_zone_id" ON "customerx_customers" ("zone_id");
CREATE INDEX "index_customerx_sales_leads_on_customer_id" ON "customerx_sales_leads" ("customer_id");
CREATE INDEX "index_customerx_sales_leads_on_lead_date" ON "customerx_sales_leads" ("lead_date");
CREATE INDEX "index_customerx_sales_leads_on_provider_id" ON "customerx_sales_leads" ("provider_id");
CREATE INDEX "index_customerx_sales_leads_on_subject" ON "customerx_sales_leads" ("subject");
CREATE INDEX "index_event_taskx_event_tasks_on_resource_id" ON "event_taskx_event_tasks" ("resource_id");
CREATE INDEX "index_event_taskx_event_tasks_on_resource_id_and_resource_string" ON "event_taskx_event_tasks" ("resource_id", "resource_string");
CREATE INDEX "index_event_taskx_event_tasks_on_resource_string" ON "event_taskx_event_tasks" ("resource_string");
CREATE INDEX "index_event_taskx_event_tasks_on_task_category" ON "event_taskx_event_tasks" ("task_category");
CREATE INDEX "index_event_taskx_event_tasks_on_wfid" ON "event_taskx_event_tasks" ("wfid");
CREATE INDEX "index_projectx_payments_on_contract_id" ON "projectx_payments" ("contract_id");
CREATE INDEX "index_projectx_payments_on_payment_type" ON "projectx_payments" ("payment_type");
CREATE INDEX "index_projectx_payments_on_received_by_id" ON "projectx_payments" ("received_by_id");
CREATE INDEX "index_projectx_payments_on_received_date" ON "projectx_payments" ("received_date");
CREATE INDEX "index_projectx_project_task_templates_on_active" ON "projectx_project_task_templates" ("active");
CREATE INDEX "index_projectx_project_task_templates_on_type_definition_id" ON "projectx_project_task_templates" ("type_definition_id");
CREATE INDEX "index_projectx_projects_on_customer_id" ON "projectx_projects" ("customer_id");
CREATE INDEX "index_projectx_projects_on_name" ON "projectx_projects" ("name");
CREATE INDEX "index_projectx_projects_on_project_manager_id" ON "projectx_projects" ("project_manager_id");
CREATE INDEX "index_projectx_projects_on_project_task_template_id" ON "projectx_projects" ("project_task_template_id");
CREATE INDEX "index_projectx_projects_on_sales_id" ON "projectx_projects" ("sales_id");
CREATE INDEX "index_projectx_projects_on_start_date" ON "projectx_projects" ("start_date");
CREATE INDEX "index_projectx_projects_on_status_id" ON "projectx_projects" ("status_id");
CREATE INDEX "index_projectx_task_requests_on_name" ON "projectx_task_requests" ("name");
CREATE INDEX "index_projectx_task_requests_on_request_date" ON "projectx_task_requests" ("request_date");
CREATE INDEX "index_projectx_task_requests_on_requested_by_id" ON "projectx_task_requests" ("requested_by_id");
CREATE INDEX "index_projectx_task_requests_on_task_id" ON "projectx_task_requests" ("task_id");
CREATE INDEX "index_projectx_tasks_on_assigned_to_id" ON "projectx_tasks" ("assigned_to_id");
CREATE INDEX "index_projectx_tasks_on_project_id" ON "projectx_tasks" ("project_id");
CREATE INDEX "index_projectx_tasks_on_task_template_id" ON "projectx_tasks" ("task_template_id");
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
