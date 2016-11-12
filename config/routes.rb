Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'

  scope '/knowlege' do
    get '/' => 'ideas#index'
    post '/' => 'ideas#create'
    scope '/:name' do
        get '/' => 'ideas#show'
        put '/' => 'ideas#update'
        delete '/' => 'ideas#destroy'
    end
  end
end
