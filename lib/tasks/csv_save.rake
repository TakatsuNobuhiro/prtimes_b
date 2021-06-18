namespace :csv_save do
  desc "csvファイルの保存"
  task :company_csv => :environment do
    company = Company.new()
    company.save_company
  end

  task :company_delete => :environment do
    company = Company.new()
    company.delete_companies
  end

  task :release_save => :environment do
    release = Release.new()
    release.save_releases

  end

end
