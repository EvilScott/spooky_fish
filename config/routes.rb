Rails.application.routes.draw do
  get '/gear', to: 'gear#index', as: 'gear'
  get '/recycle', to: 'gear#recycle', as: 'recycle'
  post '/recycle', to: 'gear#submit_recycle', as: 'submit_recycle'
  get '/sold', to: 'gear#sold', as: 'sold'
  post '/sold', to: 'gear#submit_sold', as: 'submit_sold'
  get '/sources', to: 'sources#index', as: 'sources'
  get '/credits/view/:credit_code', to: 'credits#view', as: 'credits'

  get '/about', to: 'home#about', as: 'about'
  root 'home#index'
end
