Rails.application.routes.draw do
  get 'posts/index'

  devise_for :users
  resources :users
    #get 'blog/new'
	#get 'blogs' => 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :blogs

# get '/blogs/:id/edit' => 'blogs#edit', as: 'edit_blog'

patch '/blogs/:id' => 'blogs#update', as: 'update_blog'
delete '/blogs/:id' => 'blogs#destroy', as: 'destroy_blog'


root 'blogs#index'
#ここにifでログインしている状態か否かで1.ログイン画面 2.投稿画面に行くか場合分け

end
