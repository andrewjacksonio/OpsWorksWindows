#
# Cookbook Name:: awesome_customers_windows
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# powershell_script 'Install IIS' do
  # code 'Add-WindowsFeature Web-Server'
  # guard_interpreter :powershell_script
  # not_if "(Get-WindowsFeature -Name Web-Server).Installed"
# end

# Enable the IIS role.
dsc_script 'Web-Server' do
  code <<-EOH
  WindowsFeature InstallWebServer
  {
    Name = "Web-Server"
    Ensure = "Present"
  }
  EOH
end