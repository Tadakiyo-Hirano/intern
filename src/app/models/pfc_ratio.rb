class PfcRatio < ApplicationRecord

  belongs_to :user

  validates :protein, presence: true
  validates :fat, presence: true
  validates :carbo, presence: true
  
  validate :protein_fat_carbo_total_100_percentage
  
  def protein_fat_carbo_total_100_percentage
    if protein && fat && carbo
      errors.add(:protein, "合計を100％にする必要があります。") unless (protein + fat + carbo) == 100
    end
  end
end
