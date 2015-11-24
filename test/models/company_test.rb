# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  tax_code          :string(255)
#  address           :string(255)
#  home_phone        :string(255)
#  mobile_phone      :string(255)
#  work_phone        :string(255)
#  email             :string(255)
#  ceo               :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  longitude         :float
#  latitude          :float
#  background_url    :string(2083)
#  logo              :string(255)
#  image_url         :string(2083)
#  facebook          :string(255)
#  google_plus       :string(255)
#  twiter            :string(255)
#  youtube           :string(255)
#  linkedin          :string(255)
#  partners          :string(255)      default([]), is an Array
#  about_us_title    :string(255)
#  about_us_content  :text
#  image_title       :string(255)
#  image_description :text
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
