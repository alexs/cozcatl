class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :ref
      t.string :collection
      t.string :collection_sub
      t.float :grams
      t.float :price_thb
      t.string :ring_for
      t.text :comments
      t.string :p_size
      t.string :color
      t.string :detail_new
      t.string :colour
      t.string :metal
      t.string :surface
      t.string :stone
      t.string :material
      t.string :hallmark
      t.string :comment
      t.string :diameter
      t.decimal :diameter_unit
      t.decimal :length
      t.string :length_unit
      t.decimal :wide
      t.string :wide_unit
      t.decimal :thick
      t.string :thick_unit
      t.string :watch
      t.string :watch_band
      t.string :watch_movement
      t.string :watch_waterproof
      t.string :watch_case
      t.decimal :watch_gram
      t.decimal :stock_not_ring
      t.decimal :stock_ring_freesize
      t.decimal :stock_ring_size_2
      t.decimal :stock_ring_size_3
      t.decimal :stock_ring_size_4
      t.decimal :stock_ring_size_5
      t.decimal :stock_ring_size_6
      t.decimal :stock_ring_size_7
      t.decimal :stock_ring_size_8
      t.decimal :stock_ring_size_9
      t.decimal :stock_ring_size_10
      t.decimal :stock_ring_size_11
      t.decimal :stock_ring_size_12
      t.datetime :entry_date

      t.timestamps
    end
  end
end




