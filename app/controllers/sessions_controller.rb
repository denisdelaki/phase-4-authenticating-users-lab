class SessionsController < ApplicationController
def create 
    #find the user in the database
user=User.find_by(username: params[:username])
#save the user id to the session hash 
session[:user]=user.id
render json: user
end
def destroy 
session.delete :user_id 
head :no_content
end
end
