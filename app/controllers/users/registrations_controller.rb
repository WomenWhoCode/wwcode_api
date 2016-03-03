class Users::RegistrationsController < DeviseTokenAuth::RegistrationsController
    skip_before_filter :authenticate_user!, except: [:index, :show]
    skip_before_filter  :verify_authenticity_token, only: [:create]
  # prepend_before_filter :require_no_authentication, :only => [ :new, :create ]
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
respond_to :html, :json
  # GET /resource/sign_up
  def new
    super
  end

  # POST /resource
  def create
    p "so cool"
    p params[:access_code]
    access_code = UserAccessCode.find_by(token: params[:access_code])
    p access_code
    if access_code == nil
      @user.errors.add(:access_code, "does not exist")
    elsif access_code.email != params[:email]
      @user.errors.add(:access_code, "does not match e-mail address")
    end
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
