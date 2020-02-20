class ChangeNotesTableToIncludeReferenceColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :notes, :stand_up_id_id, :stand_up_id
    # change_column :notes, :stand_up_id, :column_type, :column_options
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
