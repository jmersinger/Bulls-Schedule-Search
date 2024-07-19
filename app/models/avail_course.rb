class AvailCourse < ApplicationRecord
    belongs_to :course, foreign_key: :courses_id
    has_many :regclasses, dependent: :destroy
    has_many :users, through: :regclasses
end
