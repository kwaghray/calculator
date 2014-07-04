require 'test_helper'

class KunalsControllerTest < ActionController::TestCase
  setup do
    @kunal = kunals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kunals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kunal" do
    assert_difference('Kunal.count') do
      post :create, kunal: { decription: @kunal.decription, name: @kunal.name, title: @kunal.title }
    end

    assert_redirected_to kunal_path(assigns(:kunal))
  end

  test "should show kunal" do
    get :show, id: @kunal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kunal
    assert_response :success
  end

  test "should update kunal" do
    put :update, id: @kunal, kunal: { decription: @kunal.decription, name: @kunal.name, title: @kunal.title }
    assert_redirected_to kunal_path(assigns(:kunal))
  end

  test "should destroy kunal" do
    assert_difference('Kunal.count', -1) do
      delete :destroy, id: @kunal
    end

    assert_redirected_to kunals_path
  end
end
