module ProtosidebarHelper        
  
	
 def display_tree_recursive(tree, parent_id,x)    
	  if !x
    	ret = "<ul  id='topmenu' class='sf-menu'>"  
  	else  
			ret = "<ul>"  
		end       
		x||=true
    tree.each do |node|
      if node.parent_id == parent_id
        ret += "<li>"
        ret += yield node 
        galleries = Gallery.pagenumber(node.id)
        if galleries != [] then 
					ret+= "<ul>"
        	galleries.each do |g|
						 ret+="<li><a href= '/gallery/#{node.id}'>Gallery</a></li>" 
	 				end       
	        ret+= "</ul>"
				end
        ret += display_tree_recursive(tree, node.id,x) { |n| yield n } unless node.children.empty?
        ret += "</li>"  
      end
    end
    ret += "</ul>"
  end   


  def sitemenu(tree, parent_id,x)  
  	ret = "\n<ul class = 'sitemenu'>"        
		x||=true
    tree.each do |node|
      if node.parent_id == parent_id
        ret += "\n\t<li>"
        ret += yield node 
        galleries = Gallery.pagenumber(node.id)
        if galleries != [] then 
					ret+= "<ul>"
        	galleries.each do |g|
						 ret+="<li><a href= '/gallery/#{node.id}'>Gallery</a></li>" 
	 				end       
	        ret+= "</ul>"
				end
        ret += sitemenu(tree, node.id,x) { |n| yield n } unless node.children.empty?
        ret += "\t</li>\n"  
      end
    end
    ret += "</ul>\n"
  end
end   
