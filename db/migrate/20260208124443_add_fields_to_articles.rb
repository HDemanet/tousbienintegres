class AddFieldsToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :excerpt, :text
    add_column :articles, :author, :string
    add_column :articles, :image_path, :string
    add_column :articles, :category, :string
    add_column :articles, :featured, :boolean, default: false

    # Index pour optimisation
    add_index :articles, :published
    add_index :articles, :featured
    add_index :articles, :category
    add_index :articles, :slug, unique: true
  end
end
