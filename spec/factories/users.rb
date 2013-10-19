FactoryGirl.define do
	factory :user do
		username 'Example User'
		email 'user@example.com'
		password 'changeme'
		password_confirmation 'changeme'
		# confirmed_at Time.now
	end
end
