# app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.published.page(params[:page]).per(10)
  end

  def show
    @article = Article.find_by(slug: params[:id])

    if @article.nil? || !@article.published?
      redirect_to articles_path, alert: "Article non trouvé"
    end
  end
end
