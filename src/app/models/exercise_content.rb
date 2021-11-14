class ExerciseContent < ApplicationRecord
  belongs_to :exercise_category

  validates :content, presence: true, length: { maximum: 30 }
  validates :mets, presence: true
end
