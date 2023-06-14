class AddImageToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :image, :string
  end
end
