Rails.application.routes.draw do
	if Time.now.hour < 22 || Time.now.hour <5 
		root :to => "index#timer" 
	else
		root :to => "index#intro"
	end
	match ":controller(/:action(/:id))", :via => [:post, :get]
end
