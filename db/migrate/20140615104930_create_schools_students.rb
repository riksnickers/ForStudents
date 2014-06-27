class CreateSchoolsStudents < ActiveRecord::Migration
  def change
    create_table :schools_students do |t|
      t.references :user, polymorphic: true
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end