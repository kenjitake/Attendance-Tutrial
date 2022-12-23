class UsersController < ApplicationController
  
  def show
    @user=User.find(params[:id])
  end
  
  def new
    @user=User.new # ユーザーオブジェクトを生成し、インスタンス変数に代入します。
  end
  
  def create
    @user=User.new(params[:user])
    
    if @user.save
      
    else 
      render:new
      
    end
  end
  
  
  pravate
  
  def user_params
   params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
