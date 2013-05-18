require 'test_helper'

class ImcsControllerTest < ActionController::TestCase
  setup do
    @imc = imcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imc" do
    assert_difference('Imc.count') do
      post :create, imc: { date: @imc.date, imc: @imc.imc, poids: @imc.poids }
    end

    assert_redirected_to imc_path(assigns(:imc))
  end

  test "should show imc" do
    get :show, id: @imc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imc
    assert_response :success
  end

  test "should update imc" do
    put :update, id: @imc, imc: { date: @imc.date, imc: @imc.imc, poids: @imc.poids }
    assert_redirected_to imc_path(assigns(:imc))
  end

  test "should destroy imc" do
    assert_difference('Imc.count', -1) do
      delete :destroy, id: @imc
    end

    assert_redirected_to imcs_path
  end
end
