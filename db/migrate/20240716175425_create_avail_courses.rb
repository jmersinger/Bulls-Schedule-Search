class CreateAvailCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :avail_courses do |t|
      t.string :semester
      t.references :courses, foreign_key: true
      t.string :days
      t.date :date_start
      t.date :date_end
      t.time :time_start
      t.time :time_end

      t.timestamps
    end
  end
end
