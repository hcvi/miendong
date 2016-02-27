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
#  summary_description :text
#  status              :integer
#  slug                :string(255)
#

class Product < ActiveRecord::Base
  enum status: [ :working, :completed, :pending ]
  belongs_to :company
  belongs_to :service
  has_many :images

  translates :name, :description, :summary_description

  accepts_nested_attributes_for :images, :reject_if => :all_blank, :update_only => true, :allow_destroy => true

  before_save :generate_slug

  private

  def generate_slug
    self.slug = remove_accent(self.name).parameterize if I18n.locale == :vn
  end

  ## Convert Vietnamese to no marks
  def remove_accent(source)
    unicode = {
      'a'=>/á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ/,
      'd'=>/đ/,
      'e'=>/é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ/,
      'i'=>/í|ì|ỉ|ĩ|ị/,
      'o'=>/ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ/,
      'u'=>/ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự/,
      'y'=>/ý|ỳ|ỷ|ỹ|ỵ/,
      'A'=>/Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ/,
      'D'=>/Đ/,
      'E'=>/É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ/,
      'I'=>/Í|Ì|Ỉ|Ĩ|Ị/,
      'O'=>/Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ/,
      'U'=>/Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự/,
      'Y'=>/Ý|Ỳ|Ỷ|Ỹ|Ỵ/,
      "-"=>/[^a-zA-Z\d]/
      }
    unless source.nil?
      unicode.each do |nonUni, uni|
        source = source.rstrip
        source = source.lstrip
        source = source.gsub(/ +/, " ")
        source = source.gsub(uni, nonUni)
        source = source.gsub(/-+/,"-")
      end
      source.downcase
    end
  end
end
