require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "should get index" do
    get messages_index_url
    assert_response :success
  end
  
end
