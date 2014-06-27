class Admin::SchoolsController < ApplicationController
  #GET
  #Show all resources
  def index
  end

  #GET
  #Show one resource
  def show

  end

  #GET
  #Show the create form
  def new
    @user = User.new
  end

  #GET
  #Show the edit form
  #def edit
  #
  #end

  #POST
  #Create a new resource object
  def create
    logger.info 'Create'
    @user = User.new params[:user]
    unless @user.valid?
      logger.info 'Not Valid'
      redirect_to action: 'new'
    end
  end

  #POST
  #Update an existing resource object
  #def update
  #
  #end

  #DELETE
  #Delete an existing resource
  def destroy

  end

  def overview
  end

  def settings
  end

end

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if instance.error_message.kind_of?(Array)
    %(#{html_tag}<span class="validation-error">&nbsp;
      #{instance.error_message.join(',')}</span>)
  else
    %(#{html_tag}<span class="validation-error">&nbsp;
      #{instance.error_message}</span>)
  end
end
