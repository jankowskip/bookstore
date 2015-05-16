class CreateBookInstances < ActiveRecord::Migration
  def change
    create_table :book_instances do |t|
      t.references :book, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
