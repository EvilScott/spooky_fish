Rails.application.routes.draw do
  get '/gear', to: 'gear#index', as: 'gear'
  get '/recycle', to: 'gear#recycle', as: 'recycle'
  get '/sold', to: 'gear#sold', as: 'sold'
  post '/submit', to: 'gear#submit', as: 'submit'
  get '/sources', to: 'sources#index', as: 'sources'
  get '/credits/view/:id', to: 'credits#view', as: 'credits'

  get '/about', to: 'home#about', as: 'about'
  root 'home#index'
end
