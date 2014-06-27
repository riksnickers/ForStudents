class CreateSchoolsSubscriptions < ActiveRecord::Migration
  def change
    create_table :schools_subscriptions, id: false do |t|
      t.string :academy_year
      t.references :schools_student, index: true
      t.references :schools_school, index: true
      t.timestamps
    end
  end
end