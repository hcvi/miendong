# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string
#  parent_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  sub_service :text
#  image_url   :string(2083)     default("--- []\n")
#  icon        :string
#

require 'test_helper'

class ServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
