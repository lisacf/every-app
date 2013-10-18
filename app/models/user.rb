class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  has_many :cupcakes
  has_many :recipes
  has_many :stores
  has_many :photos
  has_many :ratings

  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

	def self.from_omniauth(auth)
		where(auth.slice("provider", "uid")).first_or_create do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.oauth_token = auth.credentials.oauth_token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			if auth.provider == "facebook"
				user.username = auth.info.name
			else
				user.username = auth.info.nickname
			end
		end
	end

	def self.new_with_session(params, session)
		if session["devise.user_attributes"]
			new session["devise.user_attributes"] do |user|
				user.attributes = params
				user.valid?
			end
		else
			super
		end
	end

	def password_required?
		super && provider.blank?
	end

	def update_with_password(params, *options)
	  if encrypted_password.blank?
	    update_attributes(params, *options)
	  else
	    super
	  end
	end

	def facebook
		@facebook ||= Koala::Facebook::API.new(oauth_token)
	end
end
