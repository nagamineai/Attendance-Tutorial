Rails.application.routes.draw do
  root 'static_pages#top'
  get'/sighup',to:'users#new'
end