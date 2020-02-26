class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.string :photo_url
      t.date :available_from
      t.date :available_to
      t.references :user, foreign_key: true
    end
  end
end
