require 'spec_helper'

module JobshopQuotex
  describe Quote do
    it "should be OK" do
      c = FactoryGirl.build(:jobshop_quotex_quote)
      c.should be_valid
    end
    
    it "should reject nil qty" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :qty_quoted => nil)
      c.should_not be_valid
    end
    
    it "should reject 0 qty" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :qty_quoted => 0)
      c.should_not be_valid
    end
    
    it "should reject 0 rfq_id" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :rfq_id => 0)
      c.should_not be_valid
    end
    
    it "should reject 0 quote_task_id" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :quote_task_id => 0)
      c.should_not be_valid
    end
    
    it "should reject nil unit" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :unit => nil)
      c.should_not be_valid
    end
    
    it "should reject nil total price" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :unit_price => nil)
      c.should_not be_valid
    end
    
    it "should reject nil total price" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :unit_price => 0)
      c.should_not be_valid
    end
    
    it "should accept 0 tax" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :tax => 0)
      c.should be_valid
    end
    
    it "should accept 0 grinding_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :grinding_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 heat_treat_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :heat_treat_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 insp_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :insp_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 machining_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :machining_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 mgmt_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :mgmt_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 misc_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :misc_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 packing_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :packing_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 plating_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :plating_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 shipping_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :shipping_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 surface_finish_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :surface_finish_cost => 0)
      c.should be_valid
    end
    
    it "should accept 0 tooling_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :tooling_cost => 0)
      c.should be_valid
    end
    
    it "should not accept 0 material_unit_price" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :material_unit_price => 0)
      c.should_not be_valid
    end
    
    it "should not accept 0 material_cost" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :material_cost => 0)
      c.should_not be_valid
    end
    
    it "should not accept 0 material_wt" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :material_wt => 0)
      c.should_not be_valid
    end
    
    it "should not accept 0 profit" do
      c = FactoryGirl.build(:jobshop_quotex_quote, :profit => 0)
      c.should_not be_valid
    end
    
  end
end
