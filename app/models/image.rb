# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  company_id :integer
#  service_id :integer
#  blog_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  url_thumb  :string(2083)
#  url        :string(2083)
#  product_id :integer
#  title      :string(255)
#  position   :string(255)
#

class Image < ActiveRecord::Base
  belongs_to :company
  belongs_to :service
  belongs_to :blog
  belongs_to :product

  translates :title

end
