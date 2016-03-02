class Users::SessionsController < DeviseTokenAuth::SessionsController
  skip_before_filter :authenticate_user!, only: [:create]
  skip_before_filter  :verify_authenticity_token, only: [:create]
  # before_filter :configure_sign_in_params, only: [:create]
  # prepend_before_filter :require_no_authentication, :only => [ :new, :create ]


  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
    puts "the coolest"
    super
  end

  # DELETE /resource/sign_out
  def destroy
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
