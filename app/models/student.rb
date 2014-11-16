class Student < ActiveRecord::Base
  has_many :schoolEnrollments, :class_name => 'SchoolEnrollment'
  has_many :schools, :class_name => 'School', through: :schoolEnrollments
  belongs_to :user, polymorphic: true
end
