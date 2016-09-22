class RenameTitleToLabelInApps < ActiveRecord::Migration[5.0]
  def change
    rename_column :apps, :title, :label
  end
end
