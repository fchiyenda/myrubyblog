class Post < ApplicationRecord
  belongs_to :category
  belongs_to :admin_user
  has_many :post_comments, :dependent => :delete_all
end
