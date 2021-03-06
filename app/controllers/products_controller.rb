class ProductsController < ApplicationController
  before_action :only => [:new, :edit] do
      redirect_to new_user_session_path unless current_user && current_user.admin
    end

  def index
    @products = Product.all
   @order_item = current_order.order_items.new
   end




  def show
    @products = Product.all

    @product = Product.find(params[:id])
    render :show
  end

  def new
    @current_user = current_user
    @product = Product.new
    render :new
  end

  def create
    @current_user = current_user
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def update
  @product= Product.find(params[:id])
  if @product.update(product_params)
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @product = Product.find(params[:id])
  @product.destroy
  redirect_to products_path
end

private
def product_params
    params.require(:product).permit(:name, :description, :cost,:image, :user_id)
  end
end
