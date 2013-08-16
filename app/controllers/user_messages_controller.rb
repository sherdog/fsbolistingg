class UserMessagesController < Devise::OmniauthCallbacksController

	def index 
		@user_messages = UserMessage.where(user_id: current_user.id)
		@message_count = @user_messages.count
	end

end