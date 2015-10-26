# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  parent_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#  description :text
#  sub_service :text
#

class Service < ActiveRecord::Base
end
