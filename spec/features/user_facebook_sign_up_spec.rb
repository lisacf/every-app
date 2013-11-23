require 'spec_helper'

feature 'Sign up via Facebook' do
	
	background do
		visit root_path
		click_link 'Sign in'

		OmniAuth.config.mock_auth[:facebook] = {
			provider: 'facebook',
			uid: '123545',
			credentials: {
				token: 'facebook token'
			}
		}
	end
end