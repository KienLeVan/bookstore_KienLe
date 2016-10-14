class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author_name
      t.string :publisher_name
      t.datetime :published_date
      t.float :unit_price
      t.string :photo

      t.timestamps
    end
  end
end
