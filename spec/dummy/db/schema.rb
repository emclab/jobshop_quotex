# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131018202321) do

  create_table "authentify_engine_configs", :force => true do |t|
    t.string   "engine_name"
    t.string   "engine_version"
    t.string   "argument_name"
    t.text     "argument_value"
    t.integer  "last_updated_by_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "brief_note"
  end

  add_index "authentify_engine_configs", ["argument_name"], :name => "index_authentify_engine_configs_on_argument_name"
  add_index "authentify_engine_configs", ["engine_name", "argument_name"], :name => "index_authentify_engine_configs_on_engine_name_and_argument_name"
  add_index "authentify_engine_configs", ["engine_name"], :name => "index_authentify_engine_configs_on_engine_name"

  create_table "authentify_group_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "brief_note"
  end

  create_table "authentify_role_definitions", :force => true do |t|
    t.string   "name"
    t.string   "brief_note"
    t.integer  "last_updated_by_id"
    t.integer  "manager_role_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "authentify_role_definitions", ["manager_role_id"], :name => "index_authentify_role_definitions_on_manager_role_id"

  create_table "authentify_sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authentify_sessions", ["session_id"], :name => "index_authentify_sessions_on_session_id"
  add_index "authentify_sessions", ["updated_at"], :name => "index_authentify_sessions_on_updated_at"

  create_table "authentify_sys_logs", :force => true do |t|
    t.datetime "log_date"
    t.integer  "user_id"
    t.string   "user_name"
    t.string   "user_ip"
    t.string   "action_logged"
  end

  add_index "authentify_sys_logs", ["user_id"], :name => "index_authentify_sys_logs_on_user_id"
  add_index "authentify_sys_logs", ["user_name"], :name => "index_authentify_sys_logs_on_user_name"

  create_table "authentify_sys_module_mappings", :force => true do |t|
    t.integer  "sys_module_id"
    t.integer  "sys_user_group_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "brief_note"
  end

  add_index "authentify_sys_module_mappings", ["sys_module_id"], :name => "index_authentify_sys_module_mappings_on_sys_module_id"
  add_index "authentify_sys_module_mappings", ["sys_user_group_id"], :name => "index_authentify_sys_module_mappings_on_sys_user_group_id"

  create_table "authentify_sys_modules", :force => true do |t|
    t.string   "module_name"
    t.string   "module_group_name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "brief_note"
  end

  add_index "authentify_sys_modules", ["module_group_name"], :name => "index_authentify_sys_modules_on_module_group_name"
  add_index "authentify_sys_modules", ["module_name"], :name => "index_authentify_sys_modules_on_module_name"

  create_table "authentify_sys_user_groups", :force => true do |t|
    t.string   "user_group_name"
    t.string   "short_note"
    t.integer  "zone_id"
    t.integer  "group_type_id"
    t.integer  "manager_group_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "authentify_sys_user_groups", ["group_type_id"], :name => "index_authentify_sys_user_groups_on_group_type_id"
  add_index "authentify_sys_user_groups", ["manager_group_id"], :name => "index_authentify_sys_user_groups_on_manager_group_id"
  add_index "authentify_sys_user_groups", ["zone_id"], :name => "index_authentify_sys_user_groups_on_zone_id"

  create_table "authentify_user_accesses", :force => true do |t|
    t.string   "action"
    t.string   "resource"
    t.string   "brief_note"
    t.integer  "last_updated_by_id"
    t.integer  "role_definition_id"
    t.text     "sql_code"
    t.text     "masked_attrs"
    t.integer  "rank"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "authentify_user_accesses", ["action", "resource"], :name => "index_authentify_user_accesses_on_action_and_resource"
  add_index "authentify_user_accesses", ["action"], :name => "index_authentify_user_accesses_on_action"
  add_index "authentify_user_accesses", ["rank"], :name => "index_authentify_user_accesses_on_rank"
  add_index "authentify_user_accesses", ["resource"], :name => "index_authentify_user_accesses_on_resource"
  add_index "authentify_user_accesses", ["role_definition_id"], :name => "index_authentify_user_accesses_on_role_definition_id"

  create_table "authentify_user_levels", :force => true do |t|
    t.integer  "user_id"
    t.integer  "sys_user_group_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "brief_note"
  end

  add_index "authentify_user_levels", ["sys_user_group_id"], :name => "index_authentify_user_levels_on_sys_user_group_id"
  add_index "authentify_user_levels", ["user_id"], :name => "index_authentify_user_levels_on_user_id"

  create_table "authentify_user_roles", :force => true do |t|
    t.integer  "last_updated_by_id"
    t.integer  "role_definition_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "brief_note"
  end

  add_index "authentify_user_roles", ["role_definition_id"], :name => "index_authentify_user_roles_on_role_definition_id"
  add_index "authentify_user_roles", ["user_id"], :name => "index_authentify_user_roles_on_user_id"

  create_table "authentify_users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "status",                 :default => "active"
    t.integer  "last_updated_by_id"
    t.integer  "customer_id"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "brief_note"
  end

  add_index "authentify_users", ["email"], :name => "index_authentify_users_on_email"
  add_index "authentify_users", ["name"], :name => "index_authentify_users_on_name"
  add_index "authentify_users", ["status"], :name => "index_authentify_users_on_status"

  create_table "authentify_zones", :force => true do |t|
    t.string   "zone_name"
    t.string   "brief_note"
    t.boolean  "active",        :default => true
    t.integer  "ranking_order"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "authentify_zones", ["id", "active"], :name => "index_authentify_zones_on_id_and_active"

  create_table "commonx_logs", :force => true do |t|
    t.text     "log"
    t.integer  "resource_id"
    t.string   "resource_name"
    t.integer  "last_updated_by_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "commonx_logs", ["resource_id", "resource_name"], :name => "index_commonx_logs_on_resource_id_and_resource_name"
  add_index "commonx_logs", ["resource_id"], :name => "index_commonx_logs_on_resource_id"
  add_index "commonx_logs", ["resource_name"], :name => "index_commonx_logs_on_resource_name"

  create_table "commonx_misc_definitions", :force => true do |t|
    t.string   "name"
    t.boolean  "active",             :default => true
    t.string   "for_which"
    t.text     "brief_note"
    t.integer  "last_updated_by_id"
    t.integer  "ranking_index"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  add_index "commonx_misc_definitions", ["active", "for_which"], :name => "index_commonx_misc_definitions_on_active_and_for_which"
  add_index "commonx_misc_definitions", ["active"], :name => "index_commonx_misc_definitions_on_active"
  add_index "commonx_misc_definitions", ["for_which"], :name => "index_commonx_misc_definitions_on_for_which"

  create_table "commonx_search_stat_configs", :force => true do |t|
    t.string   "resource_name"
    t.text     "stat_function"
    t.text     "stat_summary_function"
    t.text     "labels_and_fields"
    t.string   "time_frame"
    t.string   "search_list_form"
    t.text     "search_where"
    t.text     "search_results_period_limit"
    t.integer  "last_updated_by_id"
    t.string   "brief_note"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.string   "stat_header"
    t.text     "search_params"
  end

  add_index "commonx_search_stat_configs", ["resource_name"], :name => "index_commonx_search_stat_configs_on_resource_name"

  create_table "event_taskx_event_tasks", :force => true do |t|
    t.integer  "resource_id"
    t.string   "resource_string"
    t.string   "wfid"
    t.string   "task_category"
    t.string   "name"
    t.text     "instruction"
    t.text     "description"
    t.integer  "task_status_id"
    t.datetime "start_datetime"
    t.datetime "finish_datetime"
    t.boolean  "cancelled",          :default => false
    t.boolean  "completed",          :default => false
    t.boolean  "expedite",           :default => false
    t.integer  "last_updated_by_id"
    t.integer  "requested_by_id"
    t.integer  "executioner_id"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "event_taskx_event_tasks", ["resource_id", "resource_string"], :name => "index_event_taskx_event_tasks_on_resource_id_and_resource_string"
  add_index "event_taskx_event_tasks", ["resource_id"], :name => "index_event_taskx_event_tasks_on_resource_id"
  add_index "event_taskx_event_tasks", ["resource_string"], :name => "index_event_taskx_event_tasks_on_resource_string"
  add_index "event_taskx_event_tasks", ["task_category"], :name => "index_event_taskx_event_tasks_on_task_category"
  add_index "event_taskx_event_tasks", ["wfid"], :name => "index_event_taskx_event_tasks_on_wfid"

  create_table "jobshop_quotex_quotes", :force => true do |t|
    t.integer  "rfq_id"
    t.integer  "quote_task_id"
    t.integer  "mfg_process_id"
    t.string   "wfid"
    t.integer  "last_updated_by_id"
    t.integer  "qty_quoted"
    t.string   "unit"
    t.decimal  "material_wt",         :precision => 8,  :scale => 2
    t.string   "material_quoted"
    t.decimal  "material_unit_price", :precision => 8,  :scale => 2
    t.decimal  "unit_price",          :precision => 8,  :scale => 2
    t.decimal  "material_cost",       :precision => 10, :scale => 4
    t.decimal  "machining_cost",      :precision => 10, :scale => 4
    t.decimal  "surface_finish_cost", :precision => 10, :scale => 4
    t.decimal  "plating_cost",        :precision => 10, :scale => 4
    t.decimal  "grinding_cost",       :precision => 10, :scale => 4
    t.decimal  "heat_treat_cost",     :precision => 10, :scale => 4
    t.decimal  "packing_cost",        :precision => 8,  :scale => 4
    t.decimal  "insp_cost",           :precision => 8,  :scale => 4
    t.decimal  "mgmt_cost",           :precision => 8,  :scale => 4
    t.decimal  "shipping_cost",       :precision => 8,  :scale => 4
    t.decimal  "misc_cost",           :precision => 8,  :scale => 4
    t.decimal  "profit",              :precision => 8,  :scale => 4
    t.decimal  "tax",                 :precision => 8,  :scale => 4
    t.integer  "tooling_cost"
    t.integer  "quoted_by_id"
    t.boolean  "void",                                               :default => false
    t.text     "note"
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  add_index "jobshop_quotex_quotes", ["mfg_process_id"], :name => "index_jobshop_quotex_quotes_on_mfg_process_id"
  add_index "jobshop_quotex_quotes", ["quote_task_id"], :name => "index_jobshop_quotex_quotes_on_quote_task_id"
  add_index "jobshop_quotex_quotes", ["rfq_id"], :name => "index_jobshop_quotex_quotes_on_rfq_id"
  add_index "jobshop_quotex_quotes", ["void"], :name => "index_jobshop_quotex_quotes_on_void"
  add_index "jobshop_quotex_quotes", ["wfid"], :name => "index_jobshop_quotex_quotes_on_wfid"

  create_table "jobshop_rfqx_rfqs", :force => true do |t|
    t.string   "product_name"
    t.string   "drawing_num"
    t.text     "tech_spec"
    t.text     "tech_note"
    t.string   "wfid"
    t.integer  "last_updated_by_id"
    t.integer  "customer_id"
    t.text     "tech_doc"
    t.text     "material_requirement"
    t.integer  "sales_id"
    t.decimal  "product_wt",           :precision => 8, :scale => 2
    t.string   "qty_for_quote"
    t.string   "dimension_unit"
    t.date     "est_production_date"
    t.boolean  "void",                                               :default => false
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  add_index "jobshop_rfqx_rfqs", ["customer_id"], :name => "index_jobshop_rfqx_rfqs_on_customer_id"
  add_index "jobshop_rfqx_rfqs", ["drawing_num"], :name => "index_jobshop_rfqx_rfqs_on_drawing_num"
  add_index "jobshop_rfqx_rfqs", ["product_name"], :name => "index_jobshop_rfqx_rfqs_on_product_name"
  add_index "jobshop_rfqx_rfqs", ["sales_id"], :name => "index_jobshop_rfqx_rfqs_on_sales_id"
  add_index "jobshop_rfqx_rfqs", ["wfid"], :name => "index_jobshop_rfqx_rfqs_on_wfid"

  create_table "kustomerx_addresses", :force => true do |t|
    t.string   "province"
    t.string   "city_county_district"
    t.string   "add_line"
    t.integer  "customer_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "kustomerx_addresses", ["customer_id"], :name => "index_kustomerx_addresses_on_customer_id"

  create_table "kustomerx_contacts", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "position"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "email"
    t.text     "brief_note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "kustomerx_contacts", ["customer_id"], :name => "index_kustomerx_contacts_on_customer_id"

  create_table "kustomerx_customers", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.date     "since_date"
    t.text     "shipping_instruction"
    t.integer  "zone_id"
    t.integer  "customer_status_category_id"
    t.string   "phone"
    t.string   "fax"
    t.integer  "sales_id"
    t.boolean  "active",                      :default => true
    t.integer  "last_updated_by_id"
    t.integer  "quality_system_id"
    t.string   "employee_num"
    t.string   "revenue"
    t.text     "customer_eval"
    t.text     "main_biz"
    t.text     "customer_specific"
    t.text     "note"
    t.string   "web"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "kustomerx_customers", ["active"], :name => "index_kustomerx_customers_on_active"
  add_index "kustomerx_customers", ["name"], :name => "index_kustomerx_customers_on_name"
  add_index "kustomerx_customers", ["sales_id"], :name => "index_kustomerx_customers_on_sales_id"
  add_index "kustomerx_customers", ["since_date"], :name => "index_kustomerx_customers_on_since_date"
  add_index "kustomerx_customers", ["zone_id"], :name => "index_kustomerx_customers_on_zone_id"

  create_table "mfg_processx_mfg_processes", :force => true do |t|
    t.integer  "rfq_id"
    t.string   "name"
    t.text     "description"
    t.integer  "last_updated_by_id"
    t.integer  "composed_by_id"
    t.boolean  "void",               :default => false
    t.text     "note"
    t.string   "wfid"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "mfg_processx_mfg_processes", ["rfq_id"], :name => "index_mfg_processx_mfg_processes_on_rfq_id"

  create_table "mfg_processx_process_steps", :force => true do |t|
    t.integer  "mfg_process_id"
    t.string   "name"
    t.text     "step_desp"
    t.integer  "machine_tool_category_id"
    t.decimal  "step_duration_sec",        :precision => 8, :scale => 2
    t.integer  "ranking_order"
    t.decimal  "op_cost_hourly",           :precision => 8, :scale => 2
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

end
