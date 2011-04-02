Fobs::Application.routes.draw do
 

  match 'logout' => 'sessions#destroy', :as => :logout

  match 'login' => 'sessions#new', :as => :login

  resources :sessions

  resources :contacts, :only => [:new, :create]

  get "admin/index"

  #get "viewer/show"

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
  match 'gallery/:gallery_id/images' => 'images#index' ,:as => :admin_images   
  match 'admin/pages' => 'pages#index' ,:as => :admin_pages   
  match 'admin' => 'admin#index' ,:as => :admin      
  match '/(:pagename)' => 'viewer#show', :as => :pageshow , :defaults => {:pagename => 'Home'}   
  match '/gallery_images/:gallery_id' => 'viewer#gallery', :as => :page_gallery  
  #the route below is special for the contacts page since the contact_us action does not have it's own view and requires form interaction via the contacts controller  
  match '/viewer/contact_us' => 'contacts#new', :as =>"contact"
    match '/viewer/sitemap' => 'viewer#sitemap', :as =>"sitemap"
  match '/contact/index' => 'admin#contact_index', :as =>  :contact_index
  match '/contact/show/(:id)' => 'admin#contact_show', :as => :contact_show
  match '/contact/delete/(:id)' => 'admin#contact_destroy', :as => :contact_delete
  root :to => 'viewer#show', :defaults => {:pagename => 'Home'}  
  


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
    match ':controller(/:action(/:id(.:format)))' 
end
