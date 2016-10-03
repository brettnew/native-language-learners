class CreateLearnLanguagesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :learn_languages do |t|
      t.string :name
    end

    create_table :learn_languages_users, id: false do |t|
      t.integer :learn_languages_id
      t.integer :user_id
    end

    add_index :learn_languages_users, :learn_languages_id
    add_index :learn_languages_users, :user_id
  end
end
