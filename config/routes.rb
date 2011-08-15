Fobs::Application.routes.draw do


  resources :member_fees

  resources :emailcontacts

  resources :members


  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login

  resources :sessions

  resources :contacts, :only => [:new, :create]

  #get "admin/index"

  #get "viewer/show"


  match  'sidebar_edit/(:id)' => 'sidebar#edit'   ,:as => 'sidebar_edit'
  match   'sidebar/:id' => 'sidebar#update', :via => :put  ,:as=> 'update_sidebar'

  resources :galleries
  resources :images
  match 'admin/gallery_images/(:id)' => 'galleries#edit_images', :as => :edit_gallery_images

  match 'user/edit' => 'users#edit', :as => :edit_user

  match 'signup' => 'users#new', :as => :signup

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sesions#new', :as => :login

  resources :user_sessions

  resources :users


  resources :pages
  match 'admin/gallery' => 'galleries#index', :as => :admin_galleries
  match 'gallery/:gallery_id/images' => 'images#index', :as => :admin_images
  match 'admin/pages' => 'pages#index', :as => :admin_pages
  match 'admin' => 'admin#index', :as => :admin
  match '/(:pagename)' => 'viewer#show', :as => :pageshow, :defaults => {:pagename => 'Home'}
  match '/gallery_images/:gallery_id' => 'viewer#gallery', :as => :page_gallery
  #the route below is special for the contacts page since the contact_us action does not have it's own view and requires form interaction via the contacts controller  
  match '/viewer/contact_us' => 'contacts#new', :as =>"contact"
  match '/viewer/sitemap' => 'viewer#sitemap', :as =>"sitemap"
  match '/contact/index' => 'admin#contact_index', :as => :contact_index
  match '/contact/show/(:id)' => 'admin#contact_show', :as => :contact_show
  match '/contact/delete/(:id)' => 'admin#contact_destroy', :as => :contact_delete
  #match '/viewer/membership_form' => 'members#new', :as => :new_member
  #match '/membership/edit_details/(:id)' => 'members#edit', :as => :edit_membership
  #match '/membership/confirm_details/:id' => 'members#confirm_membership', :as => :confirm_membership

  root :to => 'viewer#show', :defaults => {:pagename => 'Home'}

  match ':controller(/:action(/:id(.:format)))'
end
