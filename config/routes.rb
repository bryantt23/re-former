ReFormer::Application.routes.draw do
  resources :users, :only => [:new, :create]
end

# In console check to make sure routes were created:
# $ rake routes