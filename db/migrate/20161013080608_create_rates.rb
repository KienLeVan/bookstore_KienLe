class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.float :value
      t.belongs_to :user, foreign_key: true
      t.belongs_to :book, foreign_key: true

      t.timestamps
    end
  end
end
