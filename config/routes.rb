Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'user#new'
  def default_url_options
    {locale: I18n.locale}
  end
end
