# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'a8002b6d4bb4a91235469bfd8c23d3ff'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  layout "application" 
  
  private
    before_filter :set_controller_and_view, :requirements
    
  def set_controller_and_view
    @current_controller = controller_name
    @current_action = action_name 
    
    
  end 
  
  def requirements
    require 'calendar_date_select'
  end
  
end
