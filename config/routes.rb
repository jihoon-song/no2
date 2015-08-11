Rails.application.routes.draw do
  root :to => 'index#intro'
  match ":controller(/:action(/:id))", :via => [:post, :get]
end
