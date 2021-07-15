class OrderdetailsController < ApplicationController
   before_action :set_orderdetail , only: [:show ,:edit ,:update ,:destroy]

 
 

  def index
   @orderdetails = Order.find(params[:id]).orderdetails
 end

  def edit
  end

  def show
  end

  def new
   @orderdetail = Orderdetail.new
  end

   def create
    @orderdetail = Orderdetail.new(orderdetail_params)
    if @orderdetail.save
    redirect_to orderdetails_path
   end
  end
  def update
     

    if @orderdetail.save
      redirect_to orderdetails_path
  end
  end
    
  def destroy
      @orderdetail.destroy
      redirect_to orderdetails_path
  end
    

  private
  def set_orderdetail
      @orderdetail = Orderdetail.find(params[:id])
  end


  def orderdetail_params
       params.require(:orderdetail).
       permit(:product_id,:user_id,:product_name,:order_id,:total_amount,:first_name,
        :last_name,:email,:mobile,:city,:region)
end
end
