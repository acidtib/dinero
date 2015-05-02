class Users::RegistrationsController < Devise::RegistrationsController
  protected
    def after_sign_up_path_for(resource)
      dashboard_path
    end

    def after_update_path_for(resource)
      dashboard_path
    end

    private
      
      def sign_up_params
        params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation, :oauth_token, :oauth_expires_at)
      end
      
      def account_update_params
        params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation, :oauth_token, :oauth_expires_at)
      end
end 
