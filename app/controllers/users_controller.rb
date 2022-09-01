class UsersController < ApplicationController
  def index
    @users=User.all
  end
  def mypage
  end
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    @user=User.new
  end

  def show
  p "================="
     p params
  p "================="
  @user=User.find(params[:id])

  end
 private
   def user_params
       params.require(:user).permit(:name,:email,:password,:password_confirmation)
   end
end
