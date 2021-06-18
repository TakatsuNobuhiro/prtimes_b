class Release < ApplicationRecord
  belongs_to :company, primary_key: :company_id

  def save_releases
    Release.all.destroy_all

    csv = CSV.read("release_list_all.csv")

    csv.each do |r| 
      Release.create(company_id: r[0],release_id: r[1],title: r[2],main_image: r[3],release_created_at: r[4])
    end
  end

  def release_delete
    Release.all.destroy_all
  end

  def calucurate
    Release.all.each do |r|
      id = r.id
      rate = r.company.growth_rate
      url = "https://hackathon.stg-prtimes.net/pv/%7Bcompany_id%7D/%7Brelease_id%7D?from={from}&to={to}&token=e7zCG8N0sl5y"

    end
  end
end
