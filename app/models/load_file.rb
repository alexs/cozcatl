class LoadFile < ActiveRecord::Base
  attr_accessible :fichero
  
  mount_uploader :fichero, FileUploadUploader
  
  validates_presence_of :fichero
  
  def load_products(fichero)
    counter = 0
    Product.delete_all
    File.open(Rails.root.to_s+"/public#{fichero}", "r") do |infile|
        while (line = infile.gets)
                if line[0] == "("
                  array_line = line.split(',')
                  if Product.new(  
                  :ref =>array_line[0].strip.sub(/\(/,'').gsub(/[\']/,''),
                  :collection =>array_line[1].gsub(/[\']/,'').strip,
                  :collection_sub =>array_line[2].gsub(/[\']/,'').strip,
                  :grams =>array_line[3].gsub(/[\']/,'').strip,
                  :price_thb =>array_line[4].gsub(/[\']/,'').strip,
                  :ring_for =>array_line[5].gsub(/[\']/,'').strip,
                  :comments =>array_line[6].gsub(/[\']/,'').strip,
                  :p_size =>array_line[7].gsub(/[\']/,'').strip,
                  :color =>array_line[8].gsub(/[\']/,'').strip,
                  :detail_new =>array_line[9].gsub(/[\']/,'').strip,
                  :colour =>array_line[10].gsub(/[\']/,'').strip,
                  :metal =>array_line[11].gsub(/[\']/,'').strip,
                  :surface =>array_line[12].gsub(/[\']/,'').strip,
                  :stone =>array_line[13].gsub(/[\']/,'').strip,
                  :material =>array_line[14].gsub(/[\']/,'').strip,
                  :hallmark =>array_line[15].gsub(/[\']/,'').strip,
                  :comment =>array_line[16].gsub(/[\']/,'').strip,
                  :diameter =>array_line[17].gsub(/[\']/,'').strip,
                  :diameter_unit =>array_line[18].gsub(/[\']/,'').strip,
                  :length =>array_line[19].gsub(/[\']/,'').strip,
                  :length_unit =>array_line[20].gsub(/[\']/,'').strip,
                  :wide =>array_line[21].gsub(/[\']/,'').strip,
                  :wide_unit =>array_line[22].gsub(/[\']/,'').strip,
                  :thick =>array_line[23].gsub(/[\']/,'').strip,
                  :thick_unit =>array_line[24].gsub(/[\']/,'').strip,
                  :watch =>array_line[25].gsub(/[\']/,'').strip,
                  :watch_band =>array_line[26].gsub(/[\']/,'').strip,
                  :watch_movement =>array_line[27].gsub(/[\']/,'').strip,
                  :watch_waterproof =>array_line[28].gsub(/[\']/,'').strip,
                  :watch_case =>array_line[29].gsub(/[\']/,'').strip,
                  :watch_gram =>array_line[30].gsub(/[\']/,'').strip,
                  :stock_not_ring =>array_line[31].gsub(/[\']/,'').strip,
                  :stock_ring_freesize =>array_line[32].gsub(/[\']/,'').strip,
                  :stock_ring_size_2 =>array_line[33].gsub(/[\']/,'').strip,
                  :stock_ring_size_3 =>array_line[34].gsub(/[\']/,'').strip,
                  :stock_ring_size_4 =>array_line[35].gsub(/[\']/,'').strip,
                  :stock_ring_size_5 =>array_line[36].gsub(/[\']/,'').strip,
                  :stock_ring_size_6 =>array_line[37].gsub(/[\']/,'').strip,
                  :stock_ring_size_7 =>array_line[38].gsub(/[\']/,'').strip,
                  :stock_ring_size_8 =>array_line[39].gsub(/[\']/,'').strip,
                  :stock_ring_size_9 =>array_line[40].gsub(/[\']/,'').strip,
                  :stock_ring_size_10 =>array_line[41].gsub(/[\']/,'').strip,
                  :stock_ring_size_11 =>array_line[42].gsub(/[\']/,'').strip,
                  :stock_ring_size_12 =>array_line[43].gsub(/[\']/,'').strip,
                  :entry_date =>array_line[44].gsub(/[\']/,'').sub(/\)/,'').sub(/\;/,'').strip
                  ).save
                  counter = counter + 1
                end
                end
        end
    end
    return counter
  end
end
