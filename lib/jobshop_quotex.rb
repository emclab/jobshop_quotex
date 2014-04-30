require "jobshop_quotex/engine"

module JobshopQuotex
  mattr_accessor :quote_task_class, :mfg_process_class, :rfq_class, :new_order_path, :order_resource, :customer_class
  
  def self.quote_task_class
    @@quote_task_class.constantize
  end
  
  def self.mfg_process_class
    @@mfg_process_class.constantize
  end
  
  def self.rfq_class
    @@rfq_class.constantize
  end
  
  def self.customer_class
    @@customer_class.constantize
  end
end
