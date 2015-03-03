class NotificationsController < ApplicationController
	before_action :find_notification, only: [:show, :edit, :update, :destroy]
	def index
		@notifications = Notification.all.order("created_at DESC")
	end
	def show

		
	end
	def new
		@notification = Notification.new

	end
	def create
		@notification = Notification.new(notification_params)
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
	private
	def notification_params
		params.require(:notification).permit(:title, :description)
	end
	def find_notification
		@notification = Notification.find(params[:id])
		
	end
end