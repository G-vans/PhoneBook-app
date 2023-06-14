class RemoveImageFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :image
  end
end
