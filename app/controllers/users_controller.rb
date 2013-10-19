class UsersController < ActionController::Base
	def create
		omniauth = request.env["omniauth.auth"]
		user = User.find_by_provider_and_uid(omniauth["provider"], omniauth["uid"]) || User.create_with_omniauth(omniauth)
		sign_in(:user, user)

		session[:user_id] = user.user_id

		redirect_to dashboard_path(user.id), :notice => "Signed in!"
	end

end