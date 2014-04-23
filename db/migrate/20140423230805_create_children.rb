class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name
      t.string :last_name
      t.string :birthday
      t.string :gender
      t.references :parent, index: true

      t.timestamps
    end
  end
end
