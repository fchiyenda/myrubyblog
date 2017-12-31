class PostComment < ApplicationRecord
  belongs_to :post

  validates_presence_of :name
  validates_length_of :name, minimum:2, maximum:20
  validates_presence_of :body
end
