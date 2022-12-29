class SessionsController < ApplicationController
  def new
  end
  
  def create
    
    user=User.find_by(email:params[:sessions][:email].downcase)
    if user && user.authenticate(params[:sessions][:password])
    
    else
     render:new
     
    end
  end
end
