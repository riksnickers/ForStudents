class User < ActiveRecord::Base
  has_one :schools_school, :class_name => 'Schools::School'
  has_one :schools_student, :class_name => 'Schools::Student'

  validates :email, presence: true,
                    length: {minimum: 4},
                    uniqueness: true
  validates :password, presence: true, length: {minimum: 4}
end
