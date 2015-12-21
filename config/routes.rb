Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'register'}, controllers: { registrations: "registrations" }

  devise_scope :user do
    get '/login' => 'devise/sessions#new'
  end

  root to: "samples#index"
  get '/home' => "samples#index"

end
