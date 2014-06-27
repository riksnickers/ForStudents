class CreateForeignKeys < ActiveRecord::Migration
  def up
    add_foreign_key :schools_subscriptions, :schools_schools, name: 'schools_subscription_schools_fk'
    add_foreign_key :schools_subscriptions, :schools_students, name: 'schools_subscription_students_fk'
    add_foreign_key :schools_students, :users, name: 'schools_students_users_fk'
    add_foreign_key :schools_schools, :users, name: 'schools_schools_users_fk'
  end

  def down
    remove_foreign_key :schools_subscriptions, name: 'schools_subscription_schools_fk'
    remove_foreign_key :schools_subscriptions, name: 'schools_subscription_students_fk'
    remove_foreign_key :schools_students, name: 'schools_students_user_fk'
    remove_foreign_key :schools_schools, :users, name: 'schools_schools_users_fk'
  end
end
