class Book <  ActiveRecord::Base
  validates :title, :thumbnail, presence: true

  has_many :book_authors, dependent: :destroy
  has_many :book_groups, dependent: :destroy
  has_many :authors, through: :book_authors
  has_many :groups, through: :book_groups

  #mount_base64_uploader :thumbnail, PictureUploader
  has_one_attached :image
end
