class ChangeIds < ActiveRecord::Migration[5.0]
  def change
    rename_column :learn_languages_users, :learn_languages_id, :learn_language_id
    
  end
end
