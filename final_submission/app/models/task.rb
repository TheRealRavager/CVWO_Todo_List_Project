class Task < ApplicationRecord
	validates :title, presence: true #makes titles compulsory for tasks
end
