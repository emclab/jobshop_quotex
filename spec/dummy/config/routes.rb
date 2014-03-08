Rails.application.routes.draw do

  mount JobshopQuotex::Engine => "/jobshop_quotex"
  mount Authentify::Engine => "/authentify"
  mount Commonx::Engine => "/commonx"
  mount EventTaskx::Engine => '/event_taskx'
  mount MfgProcessx::Engine => '/mfg_processx'
  mount JobshopRfqx::Engine => '/jobshop_rfqx'
  mount MfgOrderx::Engine => '/orderx'
  mount Kustomerx::Engine => '/kustomerx'
  mount Searchx::Engine => '/searchx'
  mount StateMachineLogx::Engine => '/sm_log'
  mount BizWorkflowx::Engine => '/wf'
  
  resource :session
  
  root :to => "authentify::sessions#new"
  match '/signin',  :to => 'authentify::sessions#new'
  match '/signout', :to => 'authentify::sessions#destroy'
  match '/user_menus', :to => 'user_menus#index'
  match '/view_handler', :to => 'authentify::application#view_handler'
end
