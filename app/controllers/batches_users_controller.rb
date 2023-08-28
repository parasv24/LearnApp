class BatchesUsersController < ApplicationController
  before_action :authenticate_user! # Devise method
  load_and_authorize_resource
  def create
    BatchesUser.create!(batch_id: params[:batch_id], user_id: params[:user_id], request_status: params[:request_status])
    redirect_to batch_path(Batch.find(params[:batch_id]))
  end

  def update
    BatchesUser.update(batch_id: params[:batch_id], user_id: params[:user_id], request_status: params[:request_status])
    redirect_to batch_path(Batch.find(params[:batch_id]))
  end
end
