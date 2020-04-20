class Group < ApplicationRecord
    validates :name, presence: true

    has_many :book_groups, dependent: :destroy
    has_many :books, through: :book_groups

    accepts_nested_attributes_for :books
end
