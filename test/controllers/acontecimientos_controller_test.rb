require 'test_helper'

class AcontecimientosControllerTest < ActionController::TestCase
  setup do
    @acontecimiento = acontecimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acontecimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acontecimiento" do
    assert_difference('Acontecimiento.count') do
      post :create, acontecimiento: { descripcion_acontecimiento: @acontecimiento.descripcion_acontecimiento, periodo_acontecimiento: @acontecimiento.periodo_acontecimiento, titulo_acontecimiento: @acontecimiento.titulo_acontecimiento }
    end

    assert_redirected_to acontecimiento_path(assigns(:acontecimiento))
  end

  test "should show acontecimiento" do
    get :show, id: @acontecimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acontecimiento
    assert_response :success
  end

  test "should update acontecimiento" do
    patch :update, id: @acontecimiento, acontecimiento: { descripcion_acontecimiento: @acontecimiento.descripcion_acontecimiento, periodo_acontecimiento: @acontecimiento.periodo_acontecimiento, titulo_acontecimiento: @acontecimiento.titulo_acontecimiento }
    assert_redirected_to acontecimiento_path(assigns(:acontecimiento))
  end

  test "should destroy acontecimiento" do
    assert_difference('Acontecimiento.count', -1) do
      delete :destroy, id: @acontecimiento
    end

    assert_redirected_to acontecimientos_path
  end
end
