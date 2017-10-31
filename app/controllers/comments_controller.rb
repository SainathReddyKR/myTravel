class CommentsController < ApplicationController

  def create
    @passengerride = Passengerride.find(params[:passengerride_id])
    @comment = @passengerride.comments.create(params[:comment].permit(:name, :body))
    redirect_to passengerride_path(@passengerride)
  end

end