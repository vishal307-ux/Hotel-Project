class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        has_many  :carts
        has_many  :orders
        has_many  :orderdetails
        

  ADMIN = 1
  USER = 2


end
