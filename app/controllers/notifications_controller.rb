class NotificationsController < ApplicationController
	before_action :find_notification, only: [:show, :edit, :update, :destroy, :upvote]
	before_action :authenticate_professor!, except: [:index, :show]
	def index
		@notifications = Notification.all.order("created_at DESC")
	end
	def show

		
	end
	def new
		@notification = current_professor.notifications.build

	end
	def create
		@notification = current_professor.notifications.build(notification_params)
		if @notification.save
			redirect_to @notification, notice: "Successfully Created!"
		else
			render 'new'
		end
	end
	def edit
		
	end
	def update
		if @notification.update(notification_params)
			redirect_to @notification, notice: "Successfully Updated"

		else
			render 'edit'
		end
	end
	def destroy
		@notification.destroy
		redirect_to root_path
	end
	def upvote
		@notification.upvote_by current_professor
		redirect_to :back
	end

	private
	def notification_params
		params.require(:notification).permit(:title, :description, :image)
	end
	def find_notification
		@notification = Notification.find(params[:id])
		
	end
end
