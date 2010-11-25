module PagesHelper        
def tree
	  Page.order(:pageorder).find(:all, :include => [ :children ]) 
end
  
def menuhelper(tree, parent_id,x)  
	ret = "\n<ul class = 'editmenu'>"        
	x||=true
  tree.each do |node|
    if node.parent_id == parent_id
      ret += "\n\t<li>"
      ret += yield node 
      ret += menuhelper(tree, node.id,x) { |n| yield n } unless node.children.empty?
      ret += "\t</li>\n"  
    end
  end
  ret += "</ul>\n"
end



end
