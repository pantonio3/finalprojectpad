class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :type
      t.decimal :cost
      t.string :user_id

      t.timestamps

    end
  end
end
