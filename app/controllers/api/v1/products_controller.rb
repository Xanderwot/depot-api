class Api::V1::ProductsController < ApplicationController

  def index
    @products = Product.includes(:attachments).order(created_at: :desc)
                  .page(params[:page]).per(10)
    render 'products/index'
  end

  def create
    @product = Product.create(product_params)
    render 'products/show'
  end

  private

  def product_params
    params.permit(:title, :description, :price)
  end
end
