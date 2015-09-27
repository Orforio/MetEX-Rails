Rails.application.routes.draw do
	root 'welcome#index'
	
	resources :lines, only: :index do
		resources :stations, only: [:index, :show]
	end
	
	resources :places, only: :show
	
	namespace :admin do
		resources :lines, except: :index do
			resources :stations, except: [:index, :show]
		end
		
		resources :places, except: :show
		resources :movements, :interchanges, :images, :sounds
	end
end
