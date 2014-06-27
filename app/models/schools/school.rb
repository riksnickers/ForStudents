class Schools::School < ActiveRecord::Base
  belongs_to :user, polymorphic: true
  has_many :subscriptions, :class_name => 'Schools::Subscription'
  has_many :students, :class_name => 'Schools::Student', through: :subscriptions
end
