class CreateSchoolsSchools < ActiveRecord::Migration
  def change
    create_table :schools_schools do |t|
      t.references :user, polymorphic: true
      t.string :Name
      t.text :Description
      t.timestamps
    end
  end
end
