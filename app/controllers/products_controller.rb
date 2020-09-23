class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_products, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = policy_scope(Product)
  end
  
  def show
    @ratings = @product.ratings
  end
  
  def new
    @product = Product.new
    authorize @product
  end
  
  def create
    @product = Product.new(product_params)
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    @product.update(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :edit
    end
  end
  
  def destroy
    @product.destroy
    redirect_to products_path
  end
  
  private
  
  def product_params
    params.require(:product).permit(:admin_rating, :name, :release_date, :description, :snippet, :design, :autonomy, :performance, :advantages, :disadvantages, :category_id, photos: [])
  end
  
  def set_products
    @product = Product.find(params[:id])
    authorize @product
  end
end