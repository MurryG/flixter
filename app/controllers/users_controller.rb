class UsersController < ApplicationController

  private

  def user_params
    params.require(:user).permit(:firstName, :lastName, :username)
  end
end
