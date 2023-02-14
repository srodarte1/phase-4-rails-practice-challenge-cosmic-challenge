class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :name
      t.references :scientist, null: false, foreign_key: {on_delete: :cascade}
      t.references :planet, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
