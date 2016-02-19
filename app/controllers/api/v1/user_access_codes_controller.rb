class Api::V1::UserAccessCodesController < ApplicationController
  before_filter :authenticate_user! except: [:index, :show]

  def index
    @user_access_codes = UserAccessCode.all
  end

  def show
    @user_access_code = UserAccessCode.find(params[:id])
  end

  def create
    @user_access_code = UserAccessCode.create(objectId: params[:objectId], email: params[:email], token: params[:token], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def update
    @user_access_code = UserAccessCode.find(params[:id])
    @user_access_code.update(objectId: params[:objectId], email: params[:email], token: params[:token], createdAt: params[:createdAt], updatedAt: params[:updatedAt])
    render :show
  end

  def destroy
    UserAccessCode.find(params[:id]).destroy
    format.json {render json: "User Access Code Removed"}
  end

end
