class Api::V1::UserAccessCodesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]

  def index
    @user_access_codes = UserAccessCode.all
  end

  def show
    @user_access_code = UserAccessCode.find(params[:id])
  end

  def create
    @user_access_code = UserAccessCode.create(user_access_codes_params)
    render :show
  end

  def update
    @user_access_code = UserAccessCode.find(params[:id])
    @user_access_code.update(user_access_codes_params)
    render :show
  end

  def destroy
    UserAccessCode.find(params[:id]).destroy
    format.json {render json: "User Access Code Removed"}
  end

  private

  def user_access_codes_params
    params.permit(:emails, :token, :createdAt, :updatedAt)
  end

end
