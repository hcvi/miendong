# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  company    :string
#  subject    :string
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#  address    :string
#

class Contact < ActiveRecord::Base
end
