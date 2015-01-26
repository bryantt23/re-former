# http://jberczel.github.io/forms-walkthrough/

ReFormer::Application.routes.draw do
  
#   Update your routes and controller to handle editing an existing user
  resources :users, :only => [:new, :create, :edit, :update]
  # resources :users, :only => [:new, :create]
end

# In console check to make sure routes were created:
# $ rake routes