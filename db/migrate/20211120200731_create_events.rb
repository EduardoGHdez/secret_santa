class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :slug, unique: true, null: false

      t.timestamps
    end
  end
end
