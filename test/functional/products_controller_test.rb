require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { collection: @product.collection, collection_sub: @product.collection_sub, color: @product.color, colour: @product.colour, comment: @product.comment, comments: @product.comments, detail_new: @product.detail_new, diameter: @product.diameter, diameter_unit: @product.diameter_unit, entry_date: @product.entry_date, grams: @product.grams, hallmark: @product.hallmark, length: @product.length, length_unit: @product.length_unit, material: @product.material, metal: @product.metal, p_size: @product.p_size, price_thb: @product.price_thb, ref: @product.ref, ring_for: @product.ring_for, stock_not_ring: @product.stock_not_ring, stock_ring_freesize: @product.stock_ring_freesize, stock_ring_size_10: @product.stock_ring_size_10, stock_ring_size_11: @product.stock_ring_size_11, stock_ring_size_12: @product.stock_ring_size_12, stock_ring_size_2: @product.stock_ring_size_2, stock_ring_size_3: @product.stock_ring_size_3, stock_ring_size_4: @product.stock_ring_size_4, stock_ring_size_5: @product.stock_ring_size_5, stock_ring_size_6: @product.stock_ring_size_6, stock_ring_size_7: @product.stock_ring_size_7, stock_ring_size_8: @product.stock_ring_size_8, stock_ring_size_9: @product.stock_ring_size_9, stone: @product.stone, surface: @product.surface, thick: @product.thick, thick_unit: @product.thick_unit, watch: @product.watch, watch_band: @product.watch_band, watch_case: @product.watch_case, watch_gram: @product.watch_gram, watch_movement: @product.watch_movement, watch_waterproof: @product.watch_waterproof, wide: @product.wide, wide_unit: @product.wide_unit }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { collection: @product.collection, collection_sub: @product.collection_sub, color: @product.color, colour: @product.colour, comment: @product.comment, comments: @product.comments, detail_new: @product.detail_new, diameter: @product.diameter, diameter_unit: @product.diameter_unit, entry_date: @product.entry_date, grams: @product.grams, hallmark: @product.hallmark, length: @product.length, length_unit: @product.length_unit, material: @product.material, metal: @product.metal, p_size: @product.p_size, price_thb: @product.price_thb, ref: @product.ref, ring_for: @product.ring_for, stock_not_ring: @product.stock_not_ring, stock_ring_freesize: @product.stock_ring_freesize, stock_ring_size_10: @product.stock_ring_size_10, stock_ring_size_11: @product.stock_ring_size_11, stock_ring_size_12: @product.stock_ring_size_12, stock_ring_size_2: @product.stock_ring_size_2, stock_ring_size_3: @product.stock_ring_size_3, stock_ring_size_4: @product.stock_ring_size_4, stock_ring_size_5: @product.stock_ring_size_5, stock_ring_size_6: @product.stock_ring_size_6, stock_ring_size_7: @product.stock_ring_size_7, stock_ring_size_8: @product.stock_ring_size_8, stock_ring_size_9: @product.stock_ring_size_9, stone: @product.stone, surface: @product.surface, thick: @product.thick, thick_unit: @product.thick_unit, watch: @product.watch, watch_band: @product.watch_band, watch_case: @product.watch_case, watch_gram: @product.watch_gram, watch_movement: @product.watch_movement, watch_waterproof: @product.watch_waterproof, wide: @product.wide, wide_unit: @product.wide_unit }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
