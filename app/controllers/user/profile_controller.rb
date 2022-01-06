class User::ProfileController < UserController

	def show
		@post = Post.new
	end

  def potential_to_follow
    @potential_to_follow = User.where.not(id: current_user.following.pluck(:id)).where.not(id: current_user.id)
  end
	
end