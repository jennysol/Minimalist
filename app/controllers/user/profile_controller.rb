class User::ProfileController < UserController

	def show
		@post = Post.new
	end

  def potential_to_follow
    @potential_to_follow = User.potential_to_follow(current_user)
  end

  def following
    @following = current_user.following
  end
	
end