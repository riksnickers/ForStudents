class Admin::AccountsController < ApplicationController

  #GET
  #Show all resources
  def index
    @users = User.all
  end

  #GET
  #Show one resource
  def show
    @user = User.find(user_id)
  end

  #GET
  #Show the create form
  def new
    @user = User.new
  end

  #GET
  #Show the edit form
  def edit
    @user = User.find(user_id)
  end

  #POST
  #Create a new resource object
  def create
    logger.info 'Create'
    @user = User.new(user_params)
    if @user.invalid?
      render 'new'
    else
      if @user.save
        flash[:info] = 'You have successfully created an account.'
        redirect_to action: 'index'
      else
        flash[:warning] = 'Something went wrong creating an account'
        render 'new'
      end
    end

  end

  #POST
  #Update an existing resource object
  def update
    logger.info 'Update'
    @user = User.find(user_id)
    if @user.invalid?
      render 'edit'
    else
      if @user.update_attributes(user_params)
        flash[:info] = 'You have successfully updated the account'
        redirect_to action: 'index'
      else
        flash[:warning] = 'Something went wrong updating the account'
        render 'edit'
      end
    end
  end

  #DELETE
  #Delete an existing resource
  def destroy
    @user = User.find(user_id)
    @user.destroy
    redirect_to action: 'index', info: 'Account deleted!'
  end

  def overview
  end

  def settings
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  private
  def user_id
    params.require(:id)
  end
end
