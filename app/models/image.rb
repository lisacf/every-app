class Image < ActiveRecord::Base
  has_many :photos, as: :photoable
end
