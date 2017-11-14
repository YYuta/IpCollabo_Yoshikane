class BlogsController < ApplicationController

	def index #たい焼きをお客様に渡す人 #一覧画面

		@blogs = Blog.all #複数のデータが入ってるからblogs blogでも動く
	end

	def new # 注文を受ける人
		@blog = Blog.new
	end

	def create # たい焼きを作る人
  		@blog = Blog.new(blog_params)
  		# @blogs.title = params[:title]
  		# @blogs.body = params[:body]
  		# @blogs.author = params[:author]
  		@blog.save
  		redirect_to '/blogs' #商品を渡すのをお願いする人
	end



	private #この下に書いたものはこのフォルダ内でしか作動しなくなってしまう
		def blog_params #ストロングパラメータ
			params.require(:blog).permit(:title, :body, :author)
		end
end
