class Book < ApplicationRecord
    validates :title, :image, presence: true

    has_many :book_authors, dependent: :destroy
    has_many :book_groups, dependent: :destroy
    has_many :authors, through: :book_authors
    has_many :groups, through: :book_groups
  
  #  mount_uploader :image, ImageUploader
end