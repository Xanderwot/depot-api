class Product < ActiveRecord::Base

  has_many :attachments, inverse_of: :product, dependent: :destroy

  validates :title, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :attachments, length: { maximum: 6 }

  accepts_nested_attributes_for :attachments, allow_destroy: true
end
