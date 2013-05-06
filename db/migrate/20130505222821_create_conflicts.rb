class CreateConflicts < ActiveRecord::Migration
  def change
    create_table :conflicts do |t|
      t.belongs_to :user
      t.belongs_to :event
      t.string :description
      t.string :details
      t.string :ctype

      t.timestamps
    end
  end
end
