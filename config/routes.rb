Rails.application.routes.draw do
  root 'welcome#index'

  get 'auth/twitter/callback', to: 'sessions#create'
  get 'mad', to: 'users#mad'
  get 'sad', to: 'users#sad'
  get 'upset', to: 'users#upset'
  get 'uncomfortable', to: 'users#uncomfortable'
  get 'calm', to: 'users#calm'
  get 'content', to: 'users#content'
  get 'happy', to: 'users#happy'
  get 'excited', to: 'users#excited'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'excited', to: 'exciteds#index'
      get 'excited/:data', to: 'exciteds#show'
      delete 'excited/:data', to: 'exciteds#destroy'
      post 'excited', to: 'exciteds#create'

      get 'happy', to: 'happys#index'
      get 'happy/:data', to: 'happys#show'
      delete 'happy/:data', to: 'happys#destroy'
      post 'happy', to: 'happys#create'

      get 'calm', to: 'calms#index'
      get 'calm/:data', to: 'calms#show'
      delete 'calm/:data', to: 'calms#destroy'
      post 'calm', to: 'calms#create'

      get 'content', to: 'contents#index'
      get 'content/:data', to: 'contents#show'
      delete 'content/:data', to: 'contents#destroy'
      post 'content', to: 'contents#create'

      get 'mad', to: 'mads#index'
      get 'mad/:data', to: 'mads#show'
      delete 'mad/:data', to: 'mads#destroy'
      post 'mad', to: 'mads#create'

      get 'sad', to: 'sads#index'
      get 'sad/:data', to: 'sads#show'
      delete 'sad/:data', to: 'sads#destroy'
      post 'sad', to: 'sads#create'

      get 'uncomfortable', to: 'uncomfortables#index'
      get 'uncomfortable/:data', to: 'uncomfortables#show'
      delete 'uncomfortable/:data', to: 'uncomfortables#destroy'
      post 'uncomfortable', to: 'uncomfortables#create'

      get 'upset', to: 'upsets#index'
      get 'upset/:data', to: 'upsets#show'
      delete 'upset/:data', to: 'upsets#destroy'
      post 'upset', to: 'upsets#create'
    end
  end
end
