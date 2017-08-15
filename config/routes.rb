Rails.application.routes.draw do

  # get 'tasks', to: 'tasks#index' # can I change that ?

  # get 'tasks/show'

  # get 'tasks/new'

  # get 'tasks/create'

  # get 'tasks/edit'

  # get 'tasks/update'

  # get 'tasks/destroy'

  # #list all
  # get 'tasks' to: 'tasks#index'

  # #get a task

  # get 'tasks/:id' to: 'tasks#show'

  # # create a task
  # get 'tasks/new' to: 'tasks#new' #get the form to create a new task
  # post 'tasks/' to: 'tasks#create' #create a new task

  # # update
  # get 'tasks/:id/edit' to: 'tasks#edit' #get the task to edit
  # patch 'tasks/:id' to: 'task#update' #update it

  # # delete
  # delete 'tasks/:id' to: 'tasks#destroy' #select and delete directly

  resources :tasks

end
