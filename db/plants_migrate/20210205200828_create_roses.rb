class CreateRoses < ActiveRecord::Migration[7.0]
  def change
    create_table :roses do |t|
      t.string :name

      t.timestamps
    end
  end
end
