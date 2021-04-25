class AddCollectionIdToComics < ActiveRecord::Migration[6.1]
  def change
    add_column :comics, :collection_id, :integer
  end
end
