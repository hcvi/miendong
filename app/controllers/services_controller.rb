class ServicesController < ApplicationController
  def index
    @services = Service.all.order('id ASC')
  end
end
