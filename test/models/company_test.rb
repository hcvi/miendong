# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string
#  tax_code          :string
#  address           :string
#  home_phone        :string
#  mobile_phone      :string
#  work_phone        :string
#  email             :string
#  ceo               :string
#  created_at        :datetime
#  updated_at        :datetime
#  longitude         :float
#  latitude          :float
#  background_url    :string(2083)
#  logo              :string
#  image_url         :string(2083)
#  facebook          :string
#  google_plus       :string
#  twiter            :string
#  youtube           :string
#  linkedin          :string
#  partners          :string           default("--- []\n")
#  about_us_title    :string
#  about_us_content  :text
#  image_title       :string
#  image_description :text
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
