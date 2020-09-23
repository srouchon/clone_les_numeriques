class RatingsController < ApplicationController
  def index
    @ratings = policy_scope(Rating)
  end
  
  def new
    @product = Product.find(params[:product_id])
    @rating = Rating.new
  end
  
  def create
    @rating = Rating.new(rating_params)
    @rating.product = Product.find(params[:product_id])
    @rating.user = current_user
    if @rating.save
      redirect_to product_path(@rating.product)
    else
      render :new
    end
  end
  
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to ratings_path 
    # authorize @rating
  end
  
  private
  
  def rating_params
    params.require(:rating).permit(:comment, :rating)
  end
end