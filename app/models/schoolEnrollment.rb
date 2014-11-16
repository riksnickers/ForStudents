class SchoolEnrollment < ActiveRecord::Base
  self.table_name = 'school_enrollment'
  belongs_to :student, :class_name => 'student', foreign_key: "student_id"
  belongs_to :school, :class_name => 'school', foreign_key: "school_id"
end
