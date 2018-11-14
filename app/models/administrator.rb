class Administrator < ApplicationRecord
	validates :username, :password, presence: true
	validates :username, uniqueness: true
end
