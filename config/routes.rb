Rails.application.routes.draw do
  resources :games
  resources :profiles

  # resources :people
  # verb "url" => "controller#action"
  get "/elephant" => "people#elephant"
  get "people/new" => "people#new"
  get "/people" => "people#index"
  post "/people"=> "people#create"
  get "/people/:id" => "people#show",as:"person"
  get "/people/:id/edit" => "people#edit", as:"people_edit"

  patch "/people/:id"=>"people#update"
  delete "/people/:id"=>"people#destroy" , as:"person_destroy"
  get 'people/:id/edit', action: :edit, controller: 'people'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
