Rails.application.routes.draw do

  namespace 'api' do
   resources :ftp
  end
end