module ContactsHelper 

 def checkuser
	 list = %w(sqrxx santa pixie gracie)
	 showword = list[rand(4)]  
	required = showword.reverse
 	   [showword,required]
 end   


end
