# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def get_icon_path(iconname)
    path = '../images/'
    return iconname
  end
  
  def button_path (options = {})
    image_source = case options[:type]
      when 'search': 'Search.png'
      when 'modify': 'Modify.png'
      when 'delete': 'Delete.png'
      when 'add'   : 'action_add.gif'
    end
    button_path = image_source
  end
  
  def navlink_name(arg = {})
    if arg[:controller] == @current_controller && arg[:action] == @current_action
      return 'navlink_active'
    else
      return 'navlink'
    end
  end
end
