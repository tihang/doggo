class ApplicationController < ActionController::Base
    include Pagy::Backend

    # Devise config
    protected
    def after_sign_in_path_for(resource)
        dashboard_index_path
    end
end
