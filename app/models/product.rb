class Product < ActiveRecord::Base
  attr_accessible :collection, :collection_sub, :color, :colour, :comment, :comments, 
  :detail_new, :diameter, :diameter_unit, :entry_date, :grams, :hallmark, :length, :length_unit, 
  :material, :metal, :p_size, :price_thb, :ref, :ring_for, :stock_not_ring, :stock_ring_freesize, 
  :stock_ring_size_10, :stock_ring_size_11, :stock_ring_size_12, :stock_ring_size_2, :stock_ring_size_3, 
  :stock_ring_size_4, :stock_ring_size_5, :stock_ring_size_6, :stock_ring_size_7, :stock_ring_size_8, 
  :stock_ring_size_9, :stone, :surface, :thick, :thick_unit, :watch, :watch_band, :watch_case, :watch_gram, 
  :watch_movement, :watch_waterproof, :wide, :wide_unit, :original_price
  
  
  def t_collection_sub
     self.collection.gsub(/SILVER/, 'plata')
  end
  
=begin
  def current_stock
    scraper = Scraper.define do
      process ".s2r .b3", :stock => :text
      result :stock
    end

    # uri = "http://www.tanai.com/jewelry-joyeria/stock.asp?g=A&act=srch&search=#{self.ref}#g=A&act=srch&search=#{self.ref}&display=&auto=Y"

     uri = URI.parse("http://www.tanai.com/jewelry-joyeria/stock.asp?g=A&act=srch&search=#{self.ref}#g=A&act=srch&search=#{self.ref}&display=&auto=Y")
    #  product.update_attribute :price, scraper.scrape(uri)[/[.0-9]+/]
      scraper.scrape(uri)
  end
=end 
end
