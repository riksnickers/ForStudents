class Schools::Subscription < ActiveRecord::Base
  belongs_to :schools_student, :class_name => 'Schools::Student'
  belongs_to :schools_school, :class_name => 'Schools::School'
end
