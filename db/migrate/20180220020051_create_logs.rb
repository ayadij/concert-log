class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.text :name
      t.string :artists
      t.text :venue

      t.timestamps
    end
  end
end
