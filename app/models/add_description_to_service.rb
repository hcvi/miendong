# == Schema Information
#
# Table name: add_description_to_services
#
#  id          :integer          not null, primary key
#  description :text
#  sub_service :text
#  created_at  :datetime
#  updated_at  :datetime
#

class AddDescriptionToService < ActiveRecord::Base
end
