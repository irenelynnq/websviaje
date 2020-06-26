Rails.application.routes.draw do
  get 'budget/budgetpage' => 'budget#budgetpage', as: 'budget_page'
  
  get 'galleries/:id' => 'galleries#show', as: 'gallery'

  get 'welcome/index'
  
  
  root 'welcome#index'
  
  resources :galleries do
    resources :pictures
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
