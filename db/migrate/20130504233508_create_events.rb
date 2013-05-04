class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :category
      t.date :date
      t.time :call
      t.time :end
      t.string :title
      t.text :description
      t.string :dress
      t.string :calllocation

      t.timestamps
    end
  end
end
