Rails.application.routes.draw do
  get '/fighters/title_holders', to: "fighters#title_holders"

  match '*path', via: [:options], to:  lambda {|_| [204, {'Content-Type' => 'text/plain'}, []]}
  resources :fighters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
