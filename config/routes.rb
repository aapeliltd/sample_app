Rails.application.routes.draw do
  get 'users/new'

  root to: 'static_pages#home'
  match '/help', controller: 'static_pages', action: 'help', via: :get
  match 'about', to: 'static_pages#about', via: :get
  match 'contact', to: 'static_pages#contact', via: :get
  match 'signup', to: 'users#new', via: :get
end
