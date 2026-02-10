class AddCountryToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :country, :integer, default: 0, null: false
    add_index :articles, :country
  end
end
