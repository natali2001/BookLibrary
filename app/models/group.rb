class Group < ActiveRecord::Base
  validates :name, presence: true

  has_many :book_groups, dependent: :destroy
  has_many :books, through: :book_groups
end
