namespace :fp7_data do
  
  desc "read fp7 data into db"
  task :populate => :environment do
    
    require 'csv'
    [Fp7Project, Fp7Contractor].each(&:delete_all)
    
    # Add Projects
    counter = 0
    start_time = Time.now
    projects = []
    CSV.foreach("vendor/data/fp7_complete.csv", headers: true, col_sep: ';') do |row| 
      projects << Fp7Project.new(row.to_hash )
      counter += 1
      if counter % 1000 == 0 then puts "READ #{counter} Fp7-Projects" end
    end
    puts "begin to import projets in db, this may take some time..."
    Fp7Project.import projects
    puts "Projects imoported took #{Time.now - start_time} seconds"
    
    #Add Project Contractors
    start_time = Time.now
    counter = 0
    contractors = []
    ["vendor/data/fp7_contractors_2.csv","vendor/data/fp7_contractors_1_utf_fixed.csv"].each do |f|
      CSV.foreach("vendor/data/fp7_contractors_2.csv", headers: true, col_sep: ';') do |row| 
        contractors << Fp7Contractor.new( row.to_hash ) 
        counter += 1
        if counter % 1000 == 0 then puts "READ #{counter} Fp7-Project-Contractors" end
      end
    end
    puts "begin to import Contractors in db, this may take some time..."
    Fp7Contractor.import contractors
    puts "Contractors imoported took #{Time.now - start_time} seconds"

  end
end