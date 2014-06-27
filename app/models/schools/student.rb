class Schools::Student < ActiveRecord::Base
  has_many :subscriptions, :class_name => 'Schools::Subscription'
  has_many :schools, :class_name => 'Schools::School', through: :subscriptions
  belongs_to :user, polymorphic: true
end
