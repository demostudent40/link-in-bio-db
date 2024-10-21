class HomeController < ApplicationController
  def index
    @links = Link.all

    render({ :template => "home/index" })
  end
end
