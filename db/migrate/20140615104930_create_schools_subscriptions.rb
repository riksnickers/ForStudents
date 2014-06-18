class CreateSchoolsSubscriptions < ActiveRecord::Migration
  def change
    create_table :schools_subscriptions do |t|
      t.datetime :SubscribedOn

      t.timestamps
    end
  end
end
