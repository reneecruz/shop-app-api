class UsersController < ApplicationController
   skip_before_action :require_login, only: [:create]
   def create
     user = User.create(user_params) 
     if user.valid?
         payload = {user_id: user.id}
         token = encode_token(payload)
         render json: {user: user, jwt: token}
     else
         render json: {errors: user.errors.full_messages}, status: :not_acceptable
     end
   end
 
   private 
 
   def user_params
     params.permit(:username, :password)
   end
 end



# class UsersController < ApplicationController

#    def index 
#     users = User.all 
#    end 
   
#    def show
#       user = User.find(params[:id])
#       render json: user
#    end 

#    def create 
#       user = User.create(user_params)
#       if user.valid?
#          user = user
#          token = JWT.encode({user_id: user.id}, secret, "HS256")
#          render json: {user: user, token: token}
#       else
#          render json: {errors: user.errors.full_messages}
#       end
#    end

#    def update 
#       user = User.find(params[:id])
#       user.update(user_params)
#       render json: user
#    end 

#    def destroy 
#       user = User.find(params[:id])
#       user.destroy
#    end

#    private 

#    def user_params 
#       params.permit(:username, :password, :first_name, :last_name, :img_url, :email)
#    end

# end
