class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { maximum: 25 }
	validates :text, presence: true, length: { minimum: 5 }

end
