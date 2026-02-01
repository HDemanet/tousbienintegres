# db/migrate/XXXXXX_add_fields_to_users.rb
class AddFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :admin, :boolean, default: false, null: false
  end
end
