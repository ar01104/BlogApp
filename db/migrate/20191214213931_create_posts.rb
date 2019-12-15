class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.string :title,                       null: false
      t.text :description
      t.date :posting_date

      t.timestamps                           null: false
    end
  end
end
