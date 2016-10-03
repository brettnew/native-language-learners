class FixLanguages < ActiveRecord::Migration[5.0]
  def change
    drop_table :languages
    drop_table :native_languages
  end
end
