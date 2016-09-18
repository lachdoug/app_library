class CreateApps < ActiveRecord::Migration[5.0]
  def change
    create_table :apps do |t|
      t.string :title
      t.string :description
      t.text :readme
      t.text :website_url
      t.attachment :icon
      t.text :blueprint_url
      t.boolean :featured
      t.boolean :published
      t.timestamps
    end
  end
end
