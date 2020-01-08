class CreateDisciplines < ActiveRecord::Migration[6.0]
  def change
    create_table :disciplines do |t|
      t.text :start_date
      t.text :end_date
      t.string :focus
      t.string :description
      t.string :industry
      t.integer :user_id

      t.timestamps
    end
  end
end
