class Admin::BlogsController < ApplicationController
  before_action :find_model, only: [:update, :edit, :destroy]

  def index
    @blog = Blog.new(body: default_body)
    @blogs = Blog.all
  end

  def edit
  end

  def update
    @blog.update_attributes(params_update)
  end

  def create
    @blog = Blog.create(params_update)
    flash[:notice] = "Success create blog"
  end

  def destroy
    @id = @blog.id
    @blog.destroy
  end

  private

  def params_update
    params.require(:blog)
      .permit(
        :slug,
        :title,
        :tags,
        :body
      )
  end

  def find_model
    @blog = Blog.find(params[:id])
  end

  def default_body
    '<div class="row">
      <div class="col-xs-12 col-sm-12 blog-content">
        <a href="#"><img class="img-responsive img-blog" src="/images/blog/blog1.jpg" width="100%" alt="" /></a>
        <h4>Consequat bibendum quam liquam viverra</h4>
        <p>Curabitur quis libero leo, pharetra mattis eros. Praesent consequat libero eget dolor convallis vel rhoncus magna scelerisque. Donec nisl ante, elementum eget posuere a, consectetur a metus. Proin a adipiscing sapien. Suspendisse vehicula porta lectus vel semper. Nullam sapien elit, lacinia eu tristique non.posuere at mi. Morbi at turpis id urna ullamcorper ullamcorper.</p>
      </div>
    </div>'.html_safe
  end

end
