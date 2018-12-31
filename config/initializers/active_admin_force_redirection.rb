ActiveAdmin::Devise::SessionsController.class_eval do
    def after_sign_in_path_for(resource)
      if resource.is_a?(AdminUser)
        admin_exams_path
      else
        users_root_path
      end
    end
  end