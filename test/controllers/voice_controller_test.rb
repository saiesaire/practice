require 'test_helper'

class VoiceControllerTest < ActionDispatch::IntegrationTest
  test "should get [:index]" do
    get voice_[:index]_url
    assert_response :success
  end

end
