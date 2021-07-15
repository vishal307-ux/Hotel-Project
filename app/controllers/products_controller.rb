class ProductsController < ApplicationController
  before_action :set_product , only:[:show ,:edit ,:update ,:destroy]
  helper_method :sort_column, :sort_direction


  


   


  def index
   @products = Product.all
   @products = Product.order(sort_column + ' ' + sort_direction)
  end



  def create
   @product = Product.new(params_product)
   if @product.save
   redirect_to products_path
  end
  end

  def new
  @product = Product.new
  end

  def edit
  end

  def show
  end
  def update
     @product = Product.new(params_product)
     if @product.save
     redirect_to products_path
  end
  end
  
  def destroy
  @product.destroy
  redirect_to products_path
  end
   
   def show 
   end
   
  private 
  def set_product
    @product = Product.find(params[:id])
  end
  
  def params_product
     # binding.pry
    params.require(:product).permit(:quantity ,:product_name ,:product_price,category_ids: [])
    
  end

  def sort_column
    params[:sort] || "product_name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end
end
