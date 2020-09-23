class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  
  def show
    @category = Category.find(params[:id])
    @products = @category.products
    authorize @category
  end
end
