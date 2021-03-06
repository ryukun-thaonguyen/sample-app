Rails.application.routes.draw do
  get 'sessions/new'
  root 'static_pages#home'
  scope "(:locale)", locale: /en|vi/ do
    get '/help', to: 'static_pages#help'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    get '/signup', to: 'users#new'
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :users
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
