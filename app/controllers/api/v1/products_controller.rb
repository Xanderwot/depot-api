class Api::V1::ProductsController < ApplicationController

  def index
    @products = Product.includes(:attachments).order(created_at: :desc)
                  .page(params[:page]).per(10)
    render 'products/index'
  end

  def create
    @product = Product.create!(product_params)
    render 'products/show'
  end

  def search
    return index unless params[:q].presence
    @products = Product.search_by_title_and_description(params[:q]).page(params[:page]).per(10)
    render 'products/index'
  end

  private

  def product_params
    params.permit(:title, :description, :price, attachments_attributes: [:id, :file])
  end
end
