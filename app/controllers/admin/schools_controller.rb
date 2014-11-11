require 'Schools'

class Admin::SchoolsController < ApplicationController
  #GET
  #Show all resources
  def index
    @schools = Schools::School.all
  end

  #GET
  #Show one resource
  def show
    @school = Schools::School.find(school_id)
  end

  #GET
  #Show the create form
  def new
    @school = Schools::School.new
  end

  #GET
  #Show the edit form
  def edit
    @school = Schools::School.find(school_id)
  end

  #POST
  #Create a new resource object
  def create
    logger.info 'Create'
    @school = Schools::School.new(school_params)
    if @school.valid?
      if @school.save
        flash[:info] = 'You have successfully created a school.'
        redirect_to action: 'index'
      else
        flash[:warning] = 'Something went wrong creating an school'
        redirect_to action: 'new'
      end
    end
  end

  #POST
  #Update an existing resource object
  def update
    logger.info 'Update school'
    @school = Schools::School.find(school_id)
    if @school.invalid?
      render 'edit'
    else
      if @school.update_attributes(school_params)
        flash[:info] = 'You have successfully updated the school'
        redirect_to action: 'index'
      else
        flash[:warning] = 'Something went wrong updating the school'
        render 'edit'
      end
    end
  end

  #DELETE
  #Delete an existing resource
  def destroy

  end

  def overview
  end

  def settings
  end

  private
  def school_params
    params.require(:schools_school).permit(:name, :description)
  end

  private
  def school_id
    params.require(:id)
  end
end

#ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
#  if instance.error_message.kind_of?(Array)
#    %(#{html_tag}<span class="validation-error">&nbsp;
#      #{instance.error_message.join(',')}</span>)
#  else
#    %(#{html_tag}<span class="validation-error">&nbsp;
#      #{instance.error_message}</span>)
#  end
#end
