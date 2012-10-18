require 'test_helper'

class LoadFilesControllerTest < ActionController::TestCase
  setup do
    @load_file = load_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:load_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create load_file" do
    assert_difference('LoadFile.count') do
      post :create, load_file: { fichero: @load_file.fichero }
    end

    assert_redirected_to load_file_path(assigns(:load_file))
  end

  test "should show load_file" do
    get :show, id: @load_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @load_file
    assert_response :success
  end

  test "should update load_file" do
    put :update, id: @load_file, load_file: { fichero: @load_file.fichero }
    assert_redirected_to load_file_path(assigns(:load_file))
  end

  test "should destroy load_file" do
    assert_difference('LoadFile.count', -1) do
      delete :destroy, id: @load_file
    end

    assert_redirected_to load_files_path
  end
end
