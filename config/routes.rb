Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home_page#index"

  resources :events, only: [:show, :create, :update] do
    resources :people
    put :draw_names, to: "draw_names#update", on: :member
  end

  put "people/:person_id/claim", to: "claim_people#update", as: :claim_people
end
