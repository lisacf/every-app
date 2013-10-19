FactoryGirl.define do
	factory :user do
		username 'Test User'
		email 'example@example.com'
		password 'foobar'
		password_confirmation 'foobar'
		# confirmed_at Time.now
	end
end