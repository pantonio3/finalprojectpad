class UpdateDocumentColumns < ActiveRecord::Migration
  def change
    add_column :documents, :document_type_id, :string
    remove_column :documents, :type
  end
end
