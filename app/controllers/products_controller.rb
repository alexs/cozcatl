class ProductsController < ApplicationController
  load_and_authorize_resource
  def index
    
    
    
    if !params[:search_word].nil?
                                     
      
        
      
      
      if params[:search_word].downcase.include? "plat"
        params[:search_word] = "silver"
      elsif params[:search_word].downcase.include? "acer"
        params[:search_word] = "steel"
      elsif params[:search_word].downcase.include? "relo"
        params[:search_word] = "wat"
      elsif params[:search_word].downcase.include? "bisut"
        params[:search_word] = "jewelery"
        elsif params[:search_word].downcase.include? "brasal"
          params[:search_word] = "bracel"
      elsif params[:search_word].downcase.include? "acceso"
        params[:search_word] = "acces"
      end
           
          
              
           if !params[:sub_cat].nil?
             @products = Product.where(['collection = ? AND collection_sub = ?',"#{params[:search_word].upcase}","#{params[:sub_cat]}"]).paginate :per_page => 12, :page => params[:page]
             @word = params[:search_word]
              # @total = @products.total_entries.to_s
              
           elsif  params[:search_word] == "jewelery" 
              @products = Product.where(['collection = ? or collection = ? or collection = ?or collection = ?or collection = ?or collection = ?or collection = ?or collection = ?or collection = ?or collection = ? 
                or collection = ?or collection = ?',"ZAMAK JEWELRY","ENAMEL JEWELRY","SILK FINISHING","SWAROVSKI JEWELRY","BOUTIQUE SWAROVSKI","FASHION JEWELRY","MURANO GLASS JEWELRY","CUBIC ZIRCONIA JEWELRY",
                "PEARLS JEWELRY","LEATHER PEARLS JEWELRY","SEMIPRECIOUS STONES","ALPACA JEWELRY"]).paginate :per_page => 12, :page => params[:page] 
              @word = params[:search_word]
           else   
           @products = Product.where(['collection LIKE ? OR ref LIKE ?',"%#{params[:search_word]}%","%#{params[:search_word]}%"]).paginate :per_page => 12, :page => params[:page]
           @word = params[:search_word] 
           #@total = @products.total_entries.to_s
           
          end 
           
           
           else
           @products = Product.paginate(:page => params[:page], :per_page => 12)  
           @word = "x"
           end 
          
     #     @products = Product.paginate(:page => params[:page], :per_page => 12)

    respond_to do |format|
     format.html
     format.json { render json: @products }
      format.js
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
     if !params[:search_word].nil?
           redirect_to products_path(:search_word =>params[:search_word]), :notice => "Resultados para: #{params[:search_word]}"
       else
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
