require 'test_helper'

class MensagensControllerTest < ActionController::TestCase
  test "should get sucesso" do
    get :sucesso
    assert_response :success
  end

  test "should get erro" do
    get :erro
    assert_response :success
  end

end
