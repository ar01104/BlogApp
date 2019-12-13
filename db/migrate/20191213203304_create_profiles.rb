class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :description
      t.string :tag

      t.timestamps
    end
  end
end
