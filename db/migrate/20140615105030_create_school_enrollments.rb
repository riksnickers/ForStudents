class CreateSchoolEnrollments < ActiveRecord::Migration
  def change
    create_table :schoolEnrollments, id: false do |t|
      t.string :academyYear
      t.references :student, index: true
      t.references :school, index: true
      t.timestamps
    end
  end
end