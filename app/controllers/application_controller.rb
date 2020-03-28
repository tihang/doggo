class ApplicationController < ActionController::Base
    include Pagy::Backend

    before_action :configure_permitted_parameters, if: :devise_controller?

    # Devise config
    protected

    def configure_permitted_parameters
        # devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end


    def after_sign_in_path_for(resource)
        dashboard_index_path
    end
end
