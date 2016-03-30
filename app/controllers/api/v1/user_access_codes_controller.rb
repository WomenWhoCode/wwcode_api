class Api::V1::UserAccessCodesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @user_access_codes = UserAccessCode.all
  end

  def show
    @user_access_code = UserAccessCode.find(params[:id])
  end

  def create
    @user_access_code = UserAccessCode.create(access_code_params)
    render :show
  end

  def update
    @user_access_code = UserAccessCode.find(params[:id])
    @user_access_code.update(access_code_params)
    render :show
  end

  def destroy
    UserAccessCode.find(params[:id]).destroy
    format.json {render json: "User Access Code Removed"}
  end

  private

  def access_code_params
    params.permit(:email, :created_at, :updated_at, :token)
  end

end
