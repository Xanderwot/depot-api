class Attachment < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  mount_uploader :file, FileUploader

  # Change to polymorphic later
  belongs_to :product, inverse_of: :attachments

  validates :file, :product, presence: true

  def url
    file.url
  end

  def middle
    file.url(:middle)
  end

  def thumb
    file.url(:thumb)
  end
end
