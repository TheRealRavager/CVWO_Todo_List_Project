class User < ApplicationRecord
	has_secure_password
	has_and_belongs_to_many :tasks
	validates :username, uniqueness: {case_sensitive: false}
end
