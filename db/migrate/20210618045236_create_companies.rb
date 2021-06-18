class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.integer :company_id
      t.string :name
      t.text :url
      t.string :ipo_type

      t.timestamps
    end
  end
end
