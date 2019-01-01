class Admin::SessionsController < Admin::ApplicationController
  layout 'login'
  before_action :authorize, except: [:new, :create, :destroy]

  def new


  end

  def create
    @traivan = Traivan.find_by(username: params[:username]).try(:authenticate, params[:password])

    if @traivan
      session[:current_traivan_id] = @traivan.id
      redirect_to admin_traivans_path, notice: "You have login successfully"
      
    else
      render :new
    end
  end

  def destroy
    session[:current_traivan_id] = nil
    redirect_to '/login', notice: "You have successfully logout"
  end
end
