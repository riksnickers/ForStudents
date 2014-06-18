class CreateSchoolsStudents < ActiveRecord::Migration
  def change
    create_table :schools_students do |t|

      t.timestamps
    end
  end
end
