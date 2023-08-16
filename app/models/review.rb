class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, presence: true

  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end


# content cannot be blank (FAILED - 2)
# rating cannot be blank (FAILED - 3)
# parent restaurant cannot be nil (FAILED - 4)
# rating should be an integer (FAILED - 5)
# rating should be a number between 0 and 5 (FAILED - 6)
