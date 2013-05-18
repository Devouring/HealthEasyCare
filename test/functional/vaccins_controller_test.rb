require 'test_helper'

class VaccinsControllerTest < ActionController::TestCase
  setup do
    @vaccin = vaccins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vaccins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vaccin" do
    assert_difference('Vaccin.count') do
      post :create, vaccin: { date: @vaccin.date, nom: @vaccin.nom, rappel: @vaccin.rappel, user_id: @vaccin.user_id }
    end

    assert_redirected_to vaccin_path(assigns(:vaccin))
  end

  test "should show vaccin" do
    get :show, id: @vaccin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vaccin
    assert_response :success
  end

  test "should update vaccin" do
    put :update, id: @vaccin, vaccin: { date: @vaccin.date, nom: @vaccin.nom, rappel: @vaccin.rappel, user_id: @vaccin.user_id }
    assert_redirected_to vaccin_path(assigns(:vaccin))
  end

  test "should destroy vaccin" do
    assert_difference('Vaccin.count', -1) do
      delete :destroy, id: @vaccin
    end

    assert_redirected_to vaccins_path
  end
end
