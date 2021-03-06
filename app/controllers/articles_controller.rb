class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    http_basic_authenticate_with name: "bob", password: "123456", except: [:index, :show]

    def index
      @articles = Article.all
      flash[:notice] = "Subscribed!"
    end
   
    def show
    end
   
    def new
      if (current_user.nil? || current_user.email != "bobbuilder@hotmail.com")
        redirect_to @article 
      end   
      @article = Article.new
    end
   
    def edit
    end
   
    def create
      @article = Article.new(article_params) 
   
      if @article.save
        Follower.all.each do |follower|
          ArticleMailer.new_article(@article.title,follower.email).deliver_now
        end
        redirect_to @article
      else
        render 'new'
      end
    end
   
    def update
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end
   
    def destroy
      @article.destroy
   
      redirect_to articles_path
    end
   
    private
      def set_article
        @article = @article = Article.find(params[:id])
      end

      def article_params
        params.require(:article).permit(:title, :text, :pic)
      end
  end
