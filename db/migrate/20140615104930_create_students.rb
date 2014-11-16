class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :user, polymorphic: true
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end