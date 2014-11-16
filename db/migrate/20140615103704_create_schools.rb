class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.references :user, polymorphic: true
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
