Rails.application.routes.draw do
  # Rotas de autenticação geradas pelo Devise
  devise_for :users

  # Página inicial definida como a lista de posts
  root to: "posts#index"

  # Rotas para posts com proteção opcional
  resources :posts do
    get :search, on: :collection
  end

  # Rotas para comentários (somente criação)
  resources :comments, only: %i[create]

  # Proteção opcional para as rotas, se necessário
  authenticated :user do
    resources :posts, only: %i[new create edit update destroy] # Restringe ações aos usuários autenticados
    resources :comments, only: %i[create]
  end

  # Redireciona usuários não autenticados para a tela de login
  unauthenticated do
    root to: "devise/sessions#new", as: :unauthenticated_root
  end
end
