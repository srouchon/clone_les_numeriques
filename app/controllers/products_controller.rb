class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  
  def index
    @products = Product.all
  end
  
  def show
    @product = Product.find(params[:id])
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    # @product.category = 
    if @product.after_save
      redirect_to product_path
    else
      render :new
    end
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
  
  private
  
  def product_params
    params.require(:product).permit(:admin_rating, :name, :release_date, :description, :snippet, :design, :autonomy, :performance, :advantages, :disadvantages, :category)
  end
end