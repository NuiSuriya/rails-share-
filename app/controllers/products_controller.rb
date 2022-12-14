class ProductsController < ApplicationController
  def index
    if params[:query].present?
      # sql_query = "name @@ :query OR category @@ :query"
      # @products = Product.where(sql_query, query: "%#{params[:query]}%")
      @products = Product.search_by_name_and_category(params[:query])
    else
      @products = Product.all
    end

  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params_product)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(params_product)
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def params_product
    params.require(:product).permit(:name, :category, :description, :price, :photo)
  end
end
