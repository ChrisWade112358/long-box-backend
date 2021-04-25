class CreateComics < ActiveRecord::Migration[6.1]
  def change
    create_table :comics do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.string :imageURL
      t.text :description
      t.integer :comicId
      t.integer :issueNumber
      t.string :format
      t.integer :pageCount

      t.timestamps
    end
  end
end
