::Refinery::Application.routes.draw do

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :pods, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
