class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.references :publisher, index: true, foreign_key: true
      t.integer :year



      t.timestamps null: false
    end
  end
end
