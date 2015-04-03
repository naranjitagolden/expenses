class Expense < ActiveRecord::Base
  belongs_to :category

  validates :date, :concept, :amount, presence: true

end
