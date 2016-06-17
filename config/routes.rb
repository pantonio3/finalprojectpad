Rails.application.routes.draw do

  # Routes for the Servicetype resource:
  # CREATE
  get "/servicetypes/new", :controller => "servicetypes", :action => "new"
  post "/create_servicetype", :controller => "servicetypes", :action => "create"

  # READ
  get "/servicetypes", :controller => "servicetypes", :action => "index"
  get "/servicetypes/:id", :controller => "servicetypes", :action => "show"

  # UPDATE
  get "/servicetypes/:id/edit", :controller => "servicetypes", :action => "edit"
  post "/update_servicetype/:id", :controller => "servicetypes", :action => "update"

  # DELETE
  get "/delete_servicetype/:id", :controller => "servicetypes", :action => "destroy"
  #------------------------------

  # Routes for the Documenttype resource:
  # CREATE
  get "/documenttypes/new", :controller => "documenttypes", :action => "new"
  post "/create_documenttype", :controller => "documenttypes", :action => "create"

  # READ
  get "/documenttypes", :controller => "documenttypes", :action => "index"
  get "/documenttypes/:id", :controller => "documenttypes", :action => "show"

  # UPDATE
  get "/documenttypes/:id/edit", :controller => "documenttypes", :action => "edit"
  post "/update_documenttype/:id", :controller => "documenttypes", :action => "update"

  # DELETE
  get "/delete_documenttype/:id", :controller => "documenttypes", :action => "destroy"
  #------------------------------


    root 'documents#index'

  # Routes for the Service resource:
  # CREATE
  get "/services/new", :controller => "services", :action => "new"
  post "/create_service", :controller => "services", :action => "create"

  # READ
  get "/services", :controller => "services", :action => "index"
  get "/services/:id", :controller => "services", :action => "show"

  # UPDATE
  get "/services/:id/edit", :controller => "services", :action => "edit"
  post "/update_service/:id", :controller => "services", :action => "update"

  # DELETE
  get "/delete_service/:id", :controller => "services", :action => "destroy"
  #------------------------------

  # Routes for the Document resource:
  # CREATE
  get "/documents/new", :controller => "documents", :action => "new"
  post "/create_document", :controller => "documents", :action => "create"

  # READ
  get "/documents", :controller => "documents", :action => "index"
  get "/documents/:id", :controller => "documents", :action => "show"

  # UPDATE
  get "/documents/:id/edit", :controller => "documents", :action => "edit"
  post "/update_document/:id", :controller => "documents", :action => "update"

  # DELETE
  get "/delete_document/:id", :controller => "documents", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
