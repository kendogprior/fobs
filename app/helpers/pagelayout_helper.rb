module PagelayoutHelper        
  
	
 #def display_tree_recursive(tree, parent_id,x)    
 #   if !x
 #   	ret = "\n<ul  id='topmenu' class='sf-menu'>"  
 # 	else  
 # 		ret = "\n<ul>"  
 # 	end       
 # 	x||=true
 #   tree.each do |node|
 #     if node.parent_id == parent_id
 #       ret += "\n\t<li>"
 #       ret += yield node 
 #       ret += display_tree_recursive(tree, node.id,x) { |n| yield n } unless node.children.empty?
 #       ret += "\t</li>\n"  
 #     end
 #   end
 #   ret += "</ul>\n"
 # end
end   
 
