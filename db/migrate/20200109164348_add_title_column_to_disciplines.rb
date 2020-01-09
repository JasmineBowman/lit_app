class AddTitleColumnToDisciplines < ActiveRecord::Migration[6.0]
  def change
    add_column :disciplines, :title, :string
  end
end
