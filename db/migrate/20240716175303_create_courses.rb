class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :subject
      t.integer :c_num
      t.string :title

      t.timestamps
    end
  end
end
