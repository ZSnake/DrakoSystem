require 'test_helper'

class TipoActividadsControllerTest < ActionController::TestCase
  setup do
    @tipo_actividad = tipo_actividads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_actividads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_actividad" do
    assert_difference('TipoActividad.count') do
      post :create, tipo_actividad: @tipo_actividad.attributes
    end

    assert_redirected_to tipo_actividad_path(assigns(:tipo_actividad))
  end

  test "should show tipo_actividad" do
    get :show, id: @tipo_actividad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_actividad
    assert_response :success
  end

  test "should update tipo_actividad" do
    put :update, id: @tipo_actividad, tipo_actividad: @tipo_actividad.attributes
    assert_redirected_to tipo_actividad_path(assigns(:tipo_actividad))
  end

  test "should destroy tipo_actividad" do
    assert_difference('TipoActividad.count', -1) do
      delete :destroy, id: @tipo_actividad
    end

    assert_redirected_to tipo_actividads_path
  end
end
