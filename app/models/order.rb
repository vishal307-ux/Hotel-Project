class Order < ApplicationRecord
	has_many :orderdetails
	has_many :product, through: :orderdetails
	belongs_to :user
    # before_save  :calculate

    #  def calculate
    #  	binding.pry
    # 	self.sub_total= (self.quantity.to_i) *  (self.product_price.to_f)
    # 	self.gst_amount= (self.total_amount.to_f) *  (0.18)
    # 	self.grand_total = (self.gst_amount.to_f)+(self.total_amount)
    #  end


	
end
