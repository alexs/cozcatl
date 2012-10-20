class SessionsController < Devise::SessionsController
  def new
    if !params[:search_word].nil?
        redirect_to products_path(:search_word =>params[:search_word]), :notice => "Resultados para: #{params[:search_word]}"
    end
  end
   
end