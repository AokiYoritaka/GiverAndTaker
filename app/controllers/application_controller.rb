class ApplicationController < ActionController::Base
    before_action :configure_pertmitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception

    protected

    def configure_pertmitted_parameters
        devise_parameter_sanitizer.permit(:sing_up, keys: %i(name self_introduction sex img_name))
        devise_parameter_sanitizer.permit(:account_update, keys: %i(name self_introduction sex image_name))
    end

    def after_sign_in_path_for(resource)
        users_path
    end
end
