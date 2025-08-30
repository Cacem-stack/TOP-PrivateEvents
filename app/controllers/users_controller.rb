class UsersController < ApplicationController
  def show
    if user_signed_in? && current_user.id == params[:id]
      render user_path(current_user.id)
    end
  end
end
