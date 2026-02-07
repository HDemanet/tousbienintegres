# app/controllers/admin/articles_controller.rb
module Admin
  class ArticlesController < ApplicationController
    before_action :authenticate_user!
    before_action :authorize_admin!
    before_action :set_article, only: [:edit, :update, :destroy]

    def new
      @article = current_user.articles.build
    end

    def create
      @article = current_user.articles.build(article_params)

      if @article.save
        redirect_to admin_root_path, notice: "Article créé avec succès"
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to admin_root_path, notice: "Article mis à jour avec succès"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
      redirect_to admin_root_path, notice: "Article supprimé"
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def authorize_admin!
      unless current_user.admin?
        redirect_to root_path, alert: "Accès refusé"
      end
    end

    def article_params
      params.require(:article).permit(:title, :content, :published)
    end
  end
end
