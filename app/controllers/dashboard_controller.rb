class DashboardController < ApplicationController

  def index
  	@user = current_user
p "XXXXXXXXXXXXXXXXX"
p @user

		@user_permission = @user.user_permission.description
  end

  def completed_tasks
  	render json: Patient.group_by_day(:created_at)
  end


end
