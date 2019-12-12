class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true, null: false
      t.text :description,                   null: false, default: ""
      t.string :tags

      t.timestamps                           null: false
    end
  end
end
