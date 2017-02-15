class ArticleController < ApplicationController
	def main
		@articles=Article.all
	end
	def newarticle
	end
	def createnewarticle
		title = params["title"]
		content = params["content"]
        newarticle=Article.new
        newarticle.title=title
        newarticle.content=content
        newarticle.save
		redirect_to '/article'
	end	
	def show
		@article=Article.find(params[:articleid])
	end
	def delete
		@article=Article.find(params[:articleid])
		@article.destroy
		redirect_to '/article'
	end
	def update
		id = params[:articleid]
		article = Article.find(id)
		title = params["title"]
		content = params["content"]
		article.title = title
		article.content = content
		article.save
	    return redirect_to '/article'
	end
	def edit
		@article=Article.find(params[:articleid])		
	end

end
