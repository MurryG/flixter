class ApplicationController < ActionController::Base
  def index
    @user = User.find(params[:id])
  end
end
