class User < ApplicationRecord
	has_secure_password
	has_many :tasks, dependent: :destroy
	validates :username, uniqueness: {case_sensitive: false}
end
