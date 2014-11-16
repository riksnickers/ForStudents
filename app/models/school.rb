class School < ActiveRecord::Base
  belongs_to :user, polymorphic: true
  has_many :schoolEnrollments, :class_name => 'SchoolEnrollment'
  has_many :students, :class_name => 'Student', through: :schoolEnrollments
end
