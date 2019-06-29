class UsersController < ApplicationController
    before_action :require_admin, only: [:admins]

    def admins
        @users = User.where(admin: false)
    end

    private
    def require_admin
        unless current_user.admin
          redirect_to root_path
        end
    end
end
