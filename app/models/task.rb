class Task < ActiveRecord::Base
  has_many :achievements
  has_many :users, through: :achievements
  
  validates :title, presence: true, length: { minimum: 3 }, uniqueness: true
  validates :description, presence: true
  validates :points, presence: true, numericality: { greater_than: 0 }
  validates :active, presence: true

  def expired?
    Date.today > self.expiration
  end

  def active?
    Date.today > self.active
  end

  def current?
    self.active? && !self.expired?
  end
end
