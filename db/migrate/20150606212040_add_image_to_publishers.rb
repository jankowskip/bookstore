class AddImageToPublishers < ActiveRecord::Migration
  def change
    add_attachment :publishers, :image
  end
end
