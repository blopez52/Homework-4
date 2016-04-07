class CreateTourdates < ActiveRecord::Migration
  def change
    create_table :tourdates do |t|
      t.string :description
      t.boolean :status

      t.timestamps null: false
    end
  end
end
