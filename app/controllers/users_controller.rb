class UsersController < ApplicationController
  
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  load_and_authorize_resource

  respond_to :html, :xml, :json

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(user_params)
      respond_with @user, notice: 'User was successfully updated.'
    else
      render :edit 
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      user_id = current_user.is_admin? ? params[:id] : current_user.id
      @user = User.find(user_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :tel, :mobile, :address, :contact_email, :facebook, :twitter, :instagram, :photo)
    end

end
