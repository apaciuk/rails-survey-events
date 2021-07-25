Rails.application.routes.draw do
  post 'surveys/create', to: 'surveys#create'
  delete 'surveys/destroy', to: 'surveys#destroy'
end
