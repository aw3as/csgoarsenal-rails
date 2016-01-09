class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :null_session

  # POST /save
  def save
    if User.find_by(:email => params[:email])
      head :error
    else
      User.create(:email => params[:email])
      head :ok
    end
  end

end
