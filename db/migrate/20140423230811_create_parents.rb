class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.text :case_number
      t.text :address
      t.text :city
      t.text :state
      t.string :zipcode
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
