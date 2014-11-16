class User < ActiveRecord::Base
  has_one :school, :class_name => 'School'
  has_one :student, :class_name => 'Student'

  validates :email, presence: true,
                    length: {minimum: 4},
                    uniqueness: true
  validates :password, presence: true, length: {minimum: 4}
end
