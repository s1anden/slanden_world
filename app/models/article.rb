class Article < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :title, :content

  scope :alphabetical, order('title ASC')
  scope :active, where(:active: true)
end
