class CreateRegClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :reg_classes do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :avail_course, foreign_key: true
      t.datetime :registration_time

      t.timestamps
    end
  end
end
