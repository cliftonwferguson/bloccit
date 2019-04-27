Rails.application.routes.draw do
  

  resources :questions
  resources :sponsored_posts
  resources :advertisements
  resources :topics do
  resources :posts, except: [:index]
   end

  get 'about' => 'welcome#about'
  
  get 'welcome/contact'
  
  get 'welcome/faq'
  
  root 'welcome#index'
  
end
