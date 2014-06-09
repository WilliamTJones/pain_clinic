PainClinic::Application.routes.draw do

  get "example/show"
  devise_for :users
  resources :patients, :has_many => :intakes

  get "doctors_dashboard/index"
  get "doctors_dashboard/new"
  get "doctors_dashboard/create"
  scope :path=>"patient_reports", :controller=>"patient_reports" do
    get "patient_reports/index"
  end
  scope :path=>'intakes', :controller=>'intakes' do
    post 'search'
  end

  resources :intakes
  get "dashboard/index"
  root :to=>"users#dashboard"
  scope :path=>'users', :controller=>'users' do
    get 'home'
    get 'logout'
    post 'login'
  end

  resource :examples, only: [:show], controller: 'examples'
  

  resources :users
  resources :user_permissions
  post "user_permissions/new"


 #  resources :patients 
 # resources :user_permissions
 #    #post "user_permissions/new"

 #  get "doctors_dashboard/index"
 #  get "doctors_dashboard/new"
 #  get "doctors_dashboard/create"
 #  scope :path=>"patient_reports", :controller=>"patient_reports" do
 #    get "patient_reports/index"
 #  end
 #  scope :path=>'intakes', :controller=>'intakes' do
 #    post 'search'
 #  end

 #  resources :intakes

 #  get "dashboard/index"
 #  root :to=>"users#dashboard"

 #  scope :path=>'users', :controller=>'users' do
 #    get 'home'
 #    get 'logout'
 #    post 'login'
 #  end
  mount Blog::Engine, at: "/blog"

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
