class Company < ApplicationRecord
  def save_company
    ipo_csv = CSV.read("ipo.csv")

    ipo_csv.each do |company| 
      Company.create(company_id: company[0],name: company[1],url: company[2], ipo_type: company[3])
    end
  end
end
