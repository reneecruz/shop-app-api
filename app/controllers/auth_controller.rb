class AuthController < ApplicationController 

    def login
        user = User.find_by(username: user_params[:username])
        if user.valid? && user.authenticate()
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, "HSA256")
            render json: {user: user, token: token}
        else 
            render json: {error: "wrong username or password"}
        end
    end 

    def persist
    end

    private 

    def user_params
        params.permit(:username, :password)
    end 

end