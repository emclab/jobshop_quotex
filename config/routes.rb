JobshopQuotex::Engine.routes.draw do

  resources :quotes do
    collection do
      get :search
      put :search_results
      get :stats
      put :stats_results
      get :copy_last
    end
  end
  
  root :to => 'quotes#index'
end
