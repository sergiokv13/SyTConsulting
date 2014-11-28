require 'test_helper'

class CertificacionsControllerTest < ActionController::TestCase
  setup do
    @certificacion = certificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificacion" do
    assert_difference('Certificacion.count') do
      post :create, certificacion: { descripcion_certificacion: @certificacion.descripcion_certificacion, titulo_certificacion: @certificacion.titulo_certificacion }
    end

    assert_redirected_to certificacion_path(assigns(:certificacion))
  end

  test "should show certificacion" do
    get :show, id: @certificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificacion
    assert_response :success
  end

  test "should update certificacion" do
    patch :update, id: @certificacion, certificacion: { descripcion_certificacion: @certificacion.descripcion_certificacion, titulo_certificacion: @certificacion.titulo_certificacion }
    assert_redirected_to certificacion_path(assigns(:certificacion))
  end

  test "should destroy certificacion" do
    assert_difference('Certificacion.count', -1) do
      delete :destroy, id: @certificacion
    end

    assert_redirected_to certificacions_path
  end
end
