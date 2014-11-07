require 'test_helper'

class BunksControllerTest < ActionController::TestCase
  setup do
    @bunk = bunks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bunks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bunk" do
    assert_difference('Bunk.count') do
      post :create, bunk: { bunk: @bunk.bunk, subjectname: @bunk.subjectname, total: @bunk.total }
    end

    assert_redirected_to bunk_path(assigns(:bunk))
  end

  test "should show bunk" do
    get :show, id: @bunk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bunk
    assert_response :success
  end

  test "should update bunk" do
    patch :update, id: @bunk, bunk: { bunk: @bunk.bunk, subjectname: @bunk.subjectname, total: @bunk.total }
    assert_redirected_to bunk_path(assigns(:bunk))
  end

  test "should destroy bunk" do
    assert_difference('Bunk.count', -1) do
      delete :destroy, id: @bunk
    end

    assert_redirected_to bunks_path
  end
end
