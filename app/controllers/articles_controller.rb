# app/controllers/articles_controller.rb
class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = Article.published

    # Filtrage par pays (optionnel, via Stimulus côté client)
    # Pas besoin de filtrer côté serveur, Stimulus s'en charge

    # Pagination (9 articles par page)
    @articles = @articles.page(params[:page]).per(9)
  end

  def show
    @article = Article.find_by(slug: params[:id])

    if @article.nil? || !@article.published?
      redirect_to articles_path, alert: "Article non trouvé"
    else
      # Articles récents
      @related_articles = Article.published
                                 .where.not(id: @article.id)
                                 .limit(3)
    end
  end
end
