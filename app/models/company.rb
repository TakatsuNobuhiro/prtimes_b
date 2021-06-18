class Company < ApplicationRecord
  self.primary_key = :company_id
  has_many :releases, dependent: :destroy
  def save_company
    Company.all.destroy_all
    ipo_csv = CSV.read("company_all_information.csv")

    ipo_csv.each do |company| 
      Company.create(company_id: company[0],name: company[1],url: company[5], ipo_type: company[2],stock_code: company[3],growth_rate: company[4])
    end
  end


  def delete_companies
    Company.all.destroy_all
  end
end
