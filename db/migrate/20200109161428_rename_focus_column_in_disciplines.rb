class RenameFocusColumnInDisciplines < ActiveRecord::Migration[6.0]
  def change
    rename_column :disciplines, :focus, :path
  end
end
