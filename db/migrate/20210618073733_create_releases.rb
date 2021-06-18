class CreateReleases < ActiveRecord::Migration[6.1]
  def change
    create_table :releases do |t|
      t.integer :company_id
      t.integer :release_id
      t.text :title
      t.text :main_image
      t.datetime :release_created_at
      t.integer :image_count

      t.timestamps
    end
  end
end
