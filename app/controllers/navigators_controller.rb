class NavigatorsController < ApplicationController
  # GET /navigators
  # GET /navigators.json
  def index
     if !params[:search_word].nil?
          redirect_to products_path(:search_word =>params[:search_word]), :notice => "Resultados para: #{params[:search_word]}"
      else
    
    if !user_signed_in?
      redirect_to new_user_session_path
    else
    respond_to do |format|
      format.html
    end
  end
end
  end

end
