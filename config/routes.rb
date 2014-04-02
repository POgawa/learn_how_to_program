Learnhowtoprogram::Application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons', {:via=> :post, :to => 'lessons#create'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons/:id/edit', {:via=> :get, :to => 'lessons#edit'})
  match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('lessons/:id', {:via => :delete, :to => 'lessons#destroy'})
end

# Wikipages::Application.routes.draw do
#   match('/', {:via => :get, :to => 'contacts#index'})
#   match('contacts', {:via => :get, :to => 'contacts#index'})
#   match('contacts/new', {:via => :get, :to => 'contacts#new'})
#   match('contacts', {:via => :post, :to => 'contacts#create'})
#   match('contacts/:id', {:via => :get, :to => 'contacts#show'})
#   match('contacts/:id/edit', {:via => :get, :to => 'contacts#edit'})
#   match('contacts/:id', {:via => [:patch, :put], :to => 'contacts#update'})
#   match('contacts/:id', {:via => :delete, :to => 'contacts#destroy'})
# end
