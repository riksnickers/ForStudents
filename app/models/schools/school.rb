class Schools::School < ActiveRecord::Base
  has_many :schools_subscriptions, :class_name => 'Schools::Subscriptions'
  has_many :schools_students, :class_name => 'Schools::Student'
end
