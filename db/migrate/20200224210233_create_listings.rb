class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.date :start_date
      t.date :end_date
      t.references :users, foreign_key: true
      t.references :spaces, foreign_key: true
    end
  end
end
