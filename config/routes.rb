Rails.application.routes.draw do
mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'

  resources :documents
  resources :events
  resources :members
    devise_for :users, :controllers => { registrations: 'registrations' }

    get 'pages/index'
	get 'about' => 'pages#about'

	root 'pages#index'

	match "*path", to: redirect('/'), via: :all

end
