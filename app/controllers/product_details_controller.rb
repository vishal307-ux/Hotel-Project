class ProductDetailsController < ApplicationController
	 before_action :set_product_detail , only:[:show ,:edit ,:update ,:destroy]
    

	 def index
     @productdetails = ProductDetail.all
    # @productdetails.select(:product_name,:product_price).distinct 
  @productdetails =  ProductDetail.select(:product_name).map(&:product_name).uniq
     end

  def edit
  end

  def show
  end

  def new
  	# binding.pry
    @id = params[:id]
    @product = Product.find(@id)
    @productdetail = ProductDetail.new
  end

  def create
    @productdetail = ProductDetail.new(product_detail_params)
       # binding.pry
     if @productdetail.save
      flash[:success] = "You item  is saved#{@productdetail.total_amount}."
      redirect_to products_path
    

  end
  end

  def update
    
     @productdetail = ProductDetail.new(product_detail_params)
    if @productdetail.save 

      

  end
  end
  #     binding.pry
  #   def quantity_update
  #  if @productdetail.present?
  #     @productdetail.add_attribute(:quantity)
  #    else
  #      @productdetail.new
  # end
  #   redirect_to products_path
  # end 
 

  

    
  def destroy
      @productdetail.destroy
      redirect_to productdetails_path
  end
    def show
    end

  private
  def set_product_detail

      @productdetail = ProductDetail.find(params[:id])
  end


  def product_detail_params
  	# binding.pry
  params.require(:product_detail).permit(:product_id, :product_name, :product_price, :quantity, :total_amount)
 
end
end
