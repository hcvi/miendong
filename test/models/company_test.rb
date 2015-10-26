# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  tax_code     :string(255)
#  address      :string(255)
#  home_phone   :string(255)
#  mobile_phone :string(255)
#  work_phone   :string(255)
#  email        :string(255)
#  ceo          :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  longitude    :float
#  latitude     :float
#

require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
