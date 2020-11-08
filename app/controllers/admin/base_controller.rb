class Admin::BaseController < ApplicationController
  layout 'admin/application'
  before_action :check_admin
  def home
    
  end 
  def check_admin
    redirect_to root_path unless current_user.admin?
  end
end