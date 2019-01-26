class Task < ApplicationRecord
	validates :title, presence: true #makes titles compulsory for tasks
	has_and_belongs_to_many :users
end
