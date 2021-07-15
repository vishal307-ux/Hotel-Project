class CategoriesController < ApplicationController
 

  def index
    @categories = Category.all
  end

  def edit
  end

  def show
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    

    if @category.save
    redirect_to categories_path
  end
  end

  def update
    
    
    if @category.save
      redirect_to categories_path
  end
  end
    
  def destroy
      @category.destroy
      redirect_to categories_path
  end
    def show
    end

  private
  def set_category
      @category = Category.find(params[:id])
  end


  def category_params
       params.require(:category).permit(:category_name)

  end 
  

end
