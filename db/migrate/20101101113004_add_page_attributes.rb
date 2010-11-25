class AddPageAttributes < ActiveRecord::Migration
  def self.up   
	  add_column :pages, :redirect, :boolean
    add_column :pages, :action_name, :string
    add_column :pages, :controller_name, :string 
    add_column :pages, :pageorder, :integer 
  end

  def self.down  
	  remove_column :pages, :redirect
    remove_column :pages, :action_name
    remove_column :pages, :controller_name
    remove_column :pages, :pageorder 
  end
end
