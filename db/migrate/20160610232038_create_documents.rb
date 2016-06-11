class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :type
      t.string :user_id
      t.string :service_id

      t.timestamps

    end
  end
end
