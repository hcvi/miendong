class AdminController < ActionController::Base
  http_basic_authenticate_with name: "admin", password: ENV['ADMIN_PASSWORD']
  layout 'admin'
end