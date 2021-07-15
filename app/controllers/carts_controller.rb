class CartsController < ApplicationController
 
     
     

  
   def item 
      

      cart = Cart.find_by(:product_id=> params[:product_id])
      if cart.present?
      cart.update(quantity: cart.quantity.to_i + params[:quantity].to_i)
      else
      Cart.create(product_id: params[:product_id], quantity: params[:quantity],
      product_price:   Product.where(id: params[:product_id]).pluck(:product_price)[0].to_f,
      product_name:   Product.where(id: params[:product_id]).pluck(:product_name)[0],
      user_id:  current_user.id)
       


     end
    end

  



   def index
    @carts = current_user.carts
   end

  def edit
  end

  def show
  end

  def new
   @cart = Cart.new
  end

  def create
    @cart = Cart.new(params_cart)
  
    
    if @cart.save
    
    redirect_to carts_path
    end
  end

  def update
   @cart = Cart.new(params_cart)
  
    if @cart.save
    redirect_to carts_path
    end
  end
    
  def destroy
      @cart.destroy
      redirect_to carts_path
  end
    def show
    end

  private
  
  # def set_cart

  #    @cart = Cart.find(params[:id])
  # end


  def params_cart
       params.require(:cart).permit(:user_id,:sub_total,:total_amount,:product_id,:product_name,:product_price,:quantity)
 end

end
