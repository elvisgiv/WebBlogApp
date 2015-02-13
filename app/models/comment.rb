class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
	has_ancestry

	validates :user_id, presence: true
	validates :post_id, presence: true
	validates :content, :presence => true
end
