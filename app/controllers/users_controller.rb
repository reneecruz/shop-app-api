class UsersController < ApplicationController

   def index 
    users = User.all 
    render json: users
   end 
   
   def show
      user = User.find(params[:id])
      render json: user
   end 

   def create 
      user = User.create(user_params)
      if user.valid?
         user.create_new_order
         token = JWT.encode({user_id: user.id}, secret, "HS256")
         render json: {user: UserSerializer.new(user), token: token}
      else
         render json: {errors: user.errors.full_messages}
      end
   end

   def update 
      user = User.find(params[:id])
      user.update(user_params)
      render json: user
   end 

   def destroy 
      user = User.find(params[:id])
      user.destroy
   end

   private 

   def user_params 
      params.permit(:username, :password, :first_name, :last_name, :img_url, :email)
   end

end



