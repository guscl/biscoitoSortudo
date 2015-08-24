require 'test_helper'

class UserFlowTest < ActionDispatch::IntegrationTest
	#Enter index page
	test "Creation of a new sentence" do
		https!
		get "/"
		assert_response:success

		get "/fortune_messages/new/"
		assert_response:success

		post_via_redirect "/fortune_messages", fortune_message: "The message"
		assert_equal '/fortune_message', path 
		assert_equal 'Fortune message was successfully created.', flash[:notice]
		
		get "/"
		assert_response:success

	end 
end
