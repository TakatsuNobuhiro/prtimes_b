class AddComunsToCompanies < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :stock_code, :integer
    add_column :companies, :growth_rate, :float
  end
end
