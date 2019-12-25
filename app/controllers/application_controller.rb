class ApplicationController < ActionController::API

    private
    
    def secret 
        ENV["JWT_SECRET_KEY"]
    end
end
