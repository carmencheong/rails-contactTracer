class CreateVisitors < ActiveRecord::Migration[6.0]
  def change
    create_table :visitors do |t|
      t.string :fullname
      t.bigint :nric
      t.string :temperature
      t.text :date
      t.text :time

      t.timestamps
    end
  end
end
