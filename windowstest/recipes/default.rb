Chef::Log.info("******Creating a data directory.******")

directory 'C:\data' do
  rights :full_control, ['Administrators','Everyone']
  inherits false
  action :create
end