Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'register'}

  devise_scope :user do
    get '/login' => 'devise/sessions#new'
  end

  root to: "samples#index"

end
