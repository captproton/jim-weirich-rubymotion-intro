# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'push-me'
  app.deployment_target = "5.1"
  app.device_family = [:ipad]
  app.codesign_certificate = DEVELOPER_CERTIFICATE_ID

  app.files = Dir.glob(File.join(app.project_dir, 'app/lib/**/*.rb')) |
    Dir.glob(File.join(app.project_dir, 'app/**/*.rb')) |
    app.files
    
end
