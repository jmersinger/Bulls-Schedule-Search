class AddProfessorInfoToAvaClasses < ActiveRecord::Migration[7.1]
  def change
    add_column :avail_courses, :professor_name, :string
    add_reference :avail_courses, :professor, foreign_key: true

    # Update existing records with professor information
    AvailCourse.all.each do |avail_course|
      if avail_course.professor_id.present?
        professor = Professor.find(avail_course.professor_id)
        avail_course.update(professor_name: "#{professor.title} #{professor.first_name} #{professor.last_name}")
      end
    end
    remove_column :avail_courses, :professor_id
  end
end
