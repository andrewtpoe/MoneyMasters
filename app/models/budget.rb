class Budget < ActiveRecord::Base
  belongs_to :user
  has_many :budget_categories
  has_many :categories, through: :budget_categories
  has_many :transactions

  validates :title, presence: true
end
