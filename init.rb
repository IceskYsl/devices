Redmine::Plugin.register :devices do
  name 'Devices'
  author 'Iceskysl'
  description 'This is a devices plugin for Redmine'
  version '0.1.0'
  url 'https://github.com/IceskYsl/devices'
  author_url 'http://my.eoe.cn/iceskysl'
  
  # project_module :worklogs do
    permission :all_devices, :devices => :index
    permission :my_devices, :holidays => :my
    permission :new_holidays, :holidays => :new
  # end
  
  menu :top_menu, :devices, { :controller => 'devices', :action => 'index' }, :caption => "设备管理"

  
end