class CreateSucculents < ActiveRecord::Migration[7.0]
  def change
    create_table :succulents do |t|
      t.string :name

      t.timestamps
    end
  end
end
