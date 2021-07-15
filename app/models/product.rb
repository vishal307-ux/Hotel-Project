class Product < ApplicationRecord

	
	has_many :carts , dependent: :destroy
	has_many :product_details, dependent: :destroy
	has_and_belongs_to_many :categories
	has_many :orderdetails
	has_many :orders ,through: :orderdetails
end
