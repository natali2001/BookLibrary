class Author < ActiveRecord::Base
  validates :name, presence: true

    has_many :book_authors, dependent: :destroy
    has_many :books, through: :book_authors
end
