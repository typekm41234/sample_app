class Micropost < ActiveRecord::Base
  validates :user_id, presence:true
  validates :content, presence:true
  default_scope ->{order('created_at DESC')}
  belongs_to :user

  def self.from_users_followed_by(user)
    followed_by_user = user.followed_user_ids
    where("user_id in (?) or user_id = ?", followed_by_user, user)
  end
end
