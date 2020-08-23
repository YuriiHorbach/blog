class Tag < ApplicationRecord
	has_many :tagging
	has_many :posts, through: :tagging
end
