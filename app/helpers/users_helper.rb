module UsersHelper   
	def users_nil?
			User.find(:first) == nil
	end
end
