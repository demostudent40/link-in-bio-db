class ApplicationController < ActionController::Base
  skip_forgery_protection

  http_basic_authenticate_with name: "appdev", password: "fullstack"
end
