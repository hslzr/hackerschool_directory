class Hacker < ActiveRecord::Base
  belongs_to :generation
  has_many :languages

	validates :name, presence: true
	validates :email, presence: true, uniqueness: true

	accepts_nested_attributes_for :languages
end
