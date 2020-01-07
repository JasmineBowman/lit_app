class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :title
      t.string :description
      t.string :industry
      t.text :email
      t.integer :phone

      t.timestamps
    end
  end
end
