class Cart < ApplicationRecord
	belongs_to :product
	belongs_to :user 
	before_save :calculate
    has_many  :orderdetail
    has_many  :order
   
   
      def calculate
      self.sub_total = (self.quantity.to_i) *  (self.product_price.to_f)
     end
end
