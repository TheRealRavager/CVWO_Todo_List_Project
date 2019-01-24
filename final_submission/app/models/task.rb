class Task < ApplicationRecord
	validates :title, presence: true #makes titles compulsory for tasks
	belongs_to :user
end
