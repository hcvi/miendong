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
#

class Image < ActiveRecord::Base
  mount_uploader :avatar, ImageUploader
  belongs_to :company
  belongs_to :service
  belongs_to :blog

end
