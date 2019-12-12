class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :User, foreign_key: true
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
