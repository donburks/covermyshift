Rails.application.routes.draw do
#	get '/teachers' => 'teachers#index'
#	get '/teachers/:id' => 'teachers#show'
#	get '/teachers/new' => 'teachers#new'
#	post '/teachers' => 'teachers#create'

	resources :teachers do
		resources :shifts, shallow: true
	end

	resource :teacher

	namespace :admin do
		resources :teachers do
			resources :shifts, shallow: true
		end
	end
end
