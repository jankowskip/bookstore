class CreateJoinTableBookCathegory < ActiveRecord::Migration
  def change
    create_join_table :books, :cathegories do |t|
      # t.index [:book_id, :cathegory_id]
      # t.index [:cathegory_id, :book_id]
    end
  end
end
