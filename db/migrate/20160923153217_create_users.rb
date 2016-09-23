class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :city, :string
      t.column :state, :string
      t.column :zipcode, :integer
      t.column :bio, :text
      t.column :gender, :string
      t.column :email, :string
      t.column :password_digest, :string

      t.timestamps
    end

    create_table :languages do |t|
      t.string :name
    end

    create_table :native_languages do |t|
      t.belongs_to :user, index: true
      t.belongs_to :language, index: true
      t.string :proficiency
    end
  end
end
