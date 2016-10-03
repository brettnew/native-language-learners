class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :native_languages do |t|
      t.string :name
    end

    add_column :users, :native_language_id, :integer
  end
end
