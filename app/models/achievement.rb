class Achievement < ActiveRecord::Base
  belongs_to :users
  belongs_to :tasks
end
