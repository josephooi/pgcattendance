class AddNamesAndSectionsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :section_id, :integer
  end
end
