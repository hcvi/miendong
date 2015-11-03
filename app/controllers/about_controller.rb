class AboutController < ApplicationController
  def index
    @services = Service.all.order('id DESC')
  end
end
