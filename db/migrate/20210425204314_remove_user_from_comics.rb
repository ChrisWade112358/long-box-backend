class RemoveUserFromComics < ActiveRecord::Migration[6.1]
  def change
    remove_reference :comics, :user, null: false, foreign_key: true
  end
end
