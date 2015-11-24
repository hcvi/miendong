class Admin::BlogsController < ApplicationController
  def index
    @blog = Blog.new()
    @blogs = Blog.all
  end
end
