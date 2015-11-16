class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :achievements
  has_many :tasks, through: :achievements

  def achivements
    Achievement.where(user_id: :id)
  end

  def points
    self.achievements.sum(:points)
  end
end
