class Achievement < ActiveRecord::Base
  belongs_to :users
  belongs_to :tasks

  validates :user_id, presence: true
  validates :task_id, presence: true
  validates :points, presence: true, numericality: { greater_than: 0 }

  def task
    @task = Task.find(self.task_id)
  end
end
