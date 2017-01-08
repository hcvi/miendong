class AdminController < ActionController::Base
  http_basic_authenticate_with name: "admin", password: ENV['admin_password'] || "admin@1234"
  layout 'admin'
end
