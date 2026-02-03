class CreateCandidates < ActiveRecord::Migration[7.1]
  def change
    create_table :candidates do |t|
      t.string :name, null: false
      t.integer :country, null: false, default: 0
      t.string :city
      t.text :bio
      t.integer :position, default: 0
      t.boolean :featured, default: false

      t.timestamps
    end

    add_index :candidates, :country
    add_index :candidates, :position
    add_index :candidates, :featured
  end
end
