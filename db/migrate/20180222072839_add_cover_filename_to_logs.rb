class AddCoverFilenameToLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :cover_filename, :string
  end
end
