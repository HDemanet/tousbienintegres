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
        flash.now[:alert] = "Erreur lors de la création : #{@article.errors.full_messages.join(', ')}"
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @article.update(article_params)
        redirect_to admin_root_path, notice: "Article modifié avec succès"
      else
        flash.now[:alert] = "Erreur lors de la modification : #{@article.errors.full_messages.join(', ')}"
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy
      redirect_to admin_root_path, notice: "Article supprimé"
    end

    private

    def set_article
      @article = if params[:id].to_s.match?(/^\d+$/)
                   Article.find(params[:id])
                 else
                   Article.find_by!(slug: params[:id])
                 end
    rescue ActiveRecord::RecordNotFound
      redirect_to admin_root_path, alert: "Article non trouvé"
    end

    def article_params
      params.require(:article).permit(
        :title,
        :slug,
        :excerpt,
        :content,
        :image,
        :author,
        :published,
        :featured,
        :country  # ✅ AJOUTÉ
      )
    end

    def authorize_admin!
      unless current_user.admin?
        redirect_to root_path, alert: "Accès refusé"
      end
    end
  end
end
