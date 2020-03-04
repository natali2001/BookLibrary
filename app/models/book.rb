class Book < ApplicationRecord
    validates :title, :image, presence: true

    has_many :book_authors, dependent: :destroy
    has_many :book_groups, dependent: :destroy
    has_many :authors, through: :book_authors
    has_many :groups, through: :book_groups
  
    mount_uploader :image, ImageUploader

    accepts_nested_attributes_for :authors

    def all_groups
        self.groups.map(&:name).join(', ')
      end
    
    def all_groups=(names)
        self.groups = names.split(',').map do |name|
        Group.where(name: name.strip).first_or_create!
    end

    end
    
    
    def all_authors
        self.authors.map(&:name).join(', ')
    end

    def all_authors=(names)
        self.authors = names.split(',').map do |name|
        Author.where(name: name.strip).first_or_create!
    end
    end
end