SbxSplashPage::Application.routes.draw do

  root :to => 'welcome#index'
  
  match 'moms', :to => 'moms#index'
  post '/register-email' => 'welcome#register_email', as: :register_email

  # match '*path', :to => 'application#render_404'
end
