class Schools::Student < ActiveRecord::Base
  has_many :schools_subscriptions, :class_name => 'Schools::Subscriptions'
end
