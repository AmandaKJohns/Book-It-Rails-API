class CreateAuditions < ActiveRecord::Migration
  def change
    create_table :auditions do |t|
      t.string :title
      t.string :content
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
