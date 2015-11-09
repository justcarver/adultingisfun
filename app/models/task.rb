class Task < ActiveRecord::Base
  has_many :achievements
  has_many :users, through: :achievements
  
  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true
  validates :points, presence: true, numericality: { greater_than: 0 }
end
