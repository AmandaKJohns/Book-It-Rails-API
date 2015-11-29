class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :audition_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
