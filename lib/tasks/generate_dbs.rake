require 'csv' 
namespace :generate_dbs do
    desc "Imports databases from csv"
    task avail_courses: :environment do   

        CSV.foreach('lib/assets/avail_courses.csv', headers: true) do |row|
            AvailCourse.create!(row.to_hash)
        end
    end
    task courses: :environment do   

        CSV.foreach('lib/assets/courses.csv', headers: true) do |row|
            Course.create!(row.to_hash)
        end
    end

end
