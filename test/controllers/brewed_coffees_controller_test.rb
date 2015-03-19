require 'test_helper'

class BrewedCoffeesControllerTest < ActionController::TestCase
  setup do
    @brewed_coffee = brewed_coffees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brewed_coffees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brewed_coffee" do
    assert_difference('BrewedCoffee.count') do
      post :create, brewed_coffee: { name: @brewed_coffee.name }
    end

    assert_redirected_to brewed_coffee_path(assigns(:brewed_coffee))
  end

  test "should show brewed_coffee" do
    get :show, id: @brewed_coffee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brewed_coffee
    assert_response :success
  end

  test "should update brewed_coffee" do
    patch :update, id: @brewed_coffee, brewed_coffee: { name: @brewed_coffee.name }
    assert_redirected_to brewed_coffee_path(assigns(:brewed_coffee))
  end

  test "should destroy brewed_coffee" do
    assert_difference('BrewedCoffee.count', -1) do
      delete :destroy, id: @brewed_coffee
    end

    assert_redirected_to brewed_coffees_path
  end
end
