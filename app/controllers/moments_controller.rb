class MomentsController < ApplicationController
  def index
    @moments = Moment.all
  end

  def create
    @moment = Moment.new moment_params
    if @moment.save
      redirect_to root_path
    else
      render json: { status: 'error', messages: @moment.errors.full_messages }
    end
  end

  private

  def moment_params
    params.require(:moment).permit(:writer, :content)
  end
end
