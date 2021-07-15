class ProductDetail < ApplicationRecord
	belongs_to :product
	before_save :calculate
   
     # after_save  :check
    def calculate
    	 # binding.pry
    	self.total_amount = (self.quantity.to_i) *  (self.product_price.to_f)
     end

   
    


end
