Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:create, :edit, :index, :new, :show, :students]
  resources :school_classes, only: [:create, :edit, :index, :new, :show, :students]
end
