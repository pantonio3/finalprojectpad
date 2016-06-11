class ChangeCostColumn < ActiveRecord::Migration
  def change
    add_column :servicetypes, :cost, :string
    remove_column :services, :cost
  end
end
