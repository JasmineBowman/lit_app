class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.text :address
      t.string :city
      t.integer :zip
      t.string :high_school
      t.string :grade_level
      t.integer :age
      t.string :email
      t.integer :phone

      t.timestamps
    end
  end
end
