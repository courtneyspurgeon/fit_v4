class RegistrationsController < Devise::RegistrationsController

  def update
    puts "-------- does this run?"
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete("password")
      params[:user].delete("password_confirmation")
    end
    super
  end


  protected

    def after_update_path_for(resource)
      # user_path(resource)
      puts 'After update path'
      edit_user_registration_path
    end
end