class DashboardsController < ApplicationController
  
  def index
    
    if !params[:search_word].nil?
           @products = Product.where(['collection LIKE ? OR ref LIKE ?',"%#{params[:search_word]}%","%#{params[:search_word]}%"]).paginate :per_page => 12, :page => params[:page]
           @total = @products.total_entries.to_s
           else
           @products = Product.paginate(:page => params[:page], :per_page => 12)
           end
     #     @products = Product.paginate(:page => params[:page], :per_page => 12)

    respond_to do |format|
      format.html
      format.json { render json: @products }
      format.js
    end
  end
  
end
