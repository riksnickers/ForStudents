class Schools::Subscription < ActiveRecord::Base
  self.table_name = "schools_subscriptions"
  belongs_to :student, :class_name => 'Schools::Student', foreign_key: "schools_student_id"
  belongs_to :school, :class_name => 'Schools::School', foreign_key: "schools_school_id"
end
