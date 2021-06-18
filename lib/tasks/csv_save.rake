namespace :csv_save do
  desc "csvファイルの保存"
  task :company_csv => :environment do
    company = Company.new()
    company.save_company
  end
end
