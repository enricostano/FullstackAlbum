FullstackAlbum::Application.routes.draw do
  scope "api" do
    resources :albums
  end

  root to: "albums#index"
end
