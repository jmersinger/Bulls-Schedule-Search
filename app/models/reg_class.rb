class RegClass < ApplicationRecord
    belongs_to :user
    belongs_to :avail_course

    validate :no_time_conflict

    private

    DAY_MAPPINGS = {
        'M' => 1,
        'T' => 2,
        'W' => 3,
        'R' => 4,
        'F' => 5,
        'S' => 6,
        'U' => 0
      }

    def no_time_conflict
        overlapping_classes = RegClass.joins(:avail_course)
                                      .where(user_id: user_id)
                                      .where.not(id: id)
                                      .where('avail_courses.date_start <= ? AND avail_courses.date_end >= ?', avail_course.date_end, avail_course.date_start)
                                      .where('avail_courses.time_start < ? AND avail_courses.time_end > ?', avail_course.time_end, avail_course.time_start)
    overlapping_classes.each do |overlap|
      overlap_days = overlap.avail_course.days.chars.map { |day| DAY_MAPPINGS[day] }
      current_days = avail_course.days.chars.map { |day| DAY_MAPPINGS[day] }

      if (overlap_days & current_days).any?
        errors.add(:base, 'This class conflicts with another class you have registered.')
                break
            end
        end
    end
end
