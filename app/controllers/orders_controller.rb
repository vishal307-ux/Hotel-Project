class OrdersController < ApplicationController
  before_action :set_order , only: [:show ,:edit ,:update ,:destroy]

  def index
    @orders =current_user.orders
    
  end

  def edit
  end

  def show
  end

  def new
   @order = Order.new
 

  end

  def create
      # binding.pry
     @order = Order.new(order_params)
     user_id = current_user.id
     if @order.save 
      current_user.carts.each do |item|
      @order.orderdetails.create!(product_id: item.product_id,product_name: item.product_name, 
        product_price: item.product_price, quantity: item.quantity, total_amount: item.sub_total
        )
      end
      current_user.carts.destroy_all
      redirect_to orders_path
    end
  
 end

  def update
     @order = Order.new(params_order)
     if @order.save
      

  end
  end
    
  def destroy
      @order.destroy
      redirect_to orders_path
  end
    

  private
  def set_order
      @order = Order.find(params[:id])
  end


  def order_params
  	# binding.pry
       params.require(:order).permit(:user_id,:first_name,:last_name,:email,:total_amount,:mobile,:city,:region)
end
end
