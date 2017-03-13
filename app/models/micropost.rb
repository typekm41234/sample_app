class Micropost < ActiveRecord::Base
  validates :user_id, presence:true
  validates :content, presence:true
  default_scope ->{order('created_at DESC')}
  belongs_to :user
end
