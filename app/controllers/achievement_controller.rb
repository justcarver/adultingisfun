class AchievementController < ApplicationController
  def create
    @achievement = Achievement.create(achievement_params)
    respond_to do |format|
      if @achievement.save
        format.html { redirect_to root_path, notice: 'Achievement has been added to your account' }
      else
        format.html { redirect_to root_path, notice: 'Achievement could not be added.' }
      end
    end
  end

  private
  def achievement_params
    params.require(:achievement).permit(:user_id, :task_id, :points)
  end
end
