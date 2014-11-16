class CreateForeignKeys < ActiveRecord::Migration
  def up
    add_foreign_key :schoolEnrollments, :schools, name: 'enrollments_schools_fk'
    add_foreign_key :schoolEnrollments, :students, name: 'enrollments_students_fk'
    add_foreign_key :students, :users, name: 'students_users_fk'
    add_foreign_key :schools, :users, name: 'schools_users_fk'
  end

  def down
    remove_foreign_key :schoolEnrollments, name: 'enrollments_schools_fk'
    remove_foreign_key :schoolEnrollments, name: 'enrollments_students_fk'
    remove_foreign_key :students, name: 'students_user_fk'
    remove_foreign_key :schools, :users, name: 'schools_users_fk'
  end
end
