class UpdateServiceColumns < ActiveRecord::Migration
  def change
    add_column :services, :service_type_id, :string
    remove_column :services, :type
  end
end
