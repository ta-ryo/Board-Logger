module RelationshipsHelper

  #相手から許可をもらっていたらtrueを返す．
  def access?(user)
    user.following.include?(current_user)
  end

  def accessfollow?(user)
    current_user.followers.include?(user)
  end
end
