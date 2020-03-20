class Question < ApplicationRecord
  belongs_to :paper
	has_many :choices, dependent: :destroy
	has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :choices
end
