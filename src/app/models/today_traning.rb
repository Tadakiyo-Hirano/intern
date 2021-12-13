class TodayTraning < ApplicationRecord
    belongs_to :user
    belongs_to :traningevent
    
    validates :traning_weight, presence: true, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 1000, message: " : 0 ~ 1000 までの数値を入力ください。"}, on: :update
    validates :traning_reps, presence: true, numericality: {only_float: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: " : 0 ~ 100 までの数値を入力ください。"}, on: :update
    validates :traning_note, length: {maximum: 100}
    
end
