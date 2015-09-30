Rails.application.routes.draw do
	root 'welcome#index'
	
	get 'tour/:line_slug/:station_slug', to: 'stations#show', as: :station
	
	resources :lines, param: :slug, only: :index do
		resources :stations, only: :index
	end
	
	resources :places, param: :slug, only: [:index, :show]
	
	namespace :admin do
		resources :lines, except: :index do
			resources :stations, except: [:index, :show]
		end
		
		resources :places, except: :show
		resources :movements, :interchanges, :images, :sounds
	end
end
