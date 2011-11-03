require 'test_helper'

class PublicaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

  test "should get nosotros" do
    get :nosotros
    assert_response :success
  end

end
