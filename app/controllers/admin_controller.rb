class AdminController < ApplicationController 
 before_filter :authenticate_admin
 before_filter :enable_admin_menu # show admin menu


 def index
    @latest_logs = Log.find(:all, :limit => 5)
 end  

 def users
    @setting[:meta_title] << User.model_name.human.pluralize 
    @users = User.paginate :page => params[:page], :per_page => 100, :order => "username ASC"
 end

 def env
 end

private


 

end
	

