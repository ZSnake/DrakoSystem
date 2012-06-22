require 'test_helper'

class VisitadorsControllerTest < ActionController::TestCase
  setup do
    @visitador = visitadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visitadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitador" do
    assert_difference('Visitador.count') do
      post :create, visitador: @visitador.attributes
    end

    assert_redirected_to visitador_path(assigns(:visitador))
  end

  test "should show visitador" do
    get :show, id: @visitador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitador
    assert_response :success
  end

  test "should update visitador" do
    put :update, id: @visitador, visitador: @visitador.attributes
    assert_redirected_to visitador_path(assigns(:visitador))
  end

  test "should destroy visitador" do
    assert_difference('Visitador.count', -1) do
      delete :destroy, id: @visitador
    end

    assert_redirected_to visitadors_path
  end
end
