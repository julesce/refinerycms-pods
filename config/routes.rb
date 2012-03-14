Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :pods do
    resources :pods, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :pods, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :pods, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
