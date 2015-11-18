# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  description         :text
#  company_id          :integer
#  service_id          :integer
#  service_name        :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  image_url           :string(2083)
#  status              :string(255)
#  summary_description :text
#  slug                :string(255)
#

class Product < ActiveRecord::Base
  enum status: [ :working, :completed, :pending ]
  belongs_to :company
  belongs_to :service
  has_many :images

  translates :name, :description, :summary_description

  accepts_nested_attributes_for :images, :reject_if => :all_blank, :update_only => true, :allow_destroy => true
end
