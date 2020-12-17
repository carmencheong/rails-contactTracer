class CreateSignups < ActiveRecord::Migration[6.0]
  def change
    create_table :signups do |t|
      t.string :owner
      t.string :shopname
      t.string :shoplocation
      t.string :url
      t.references :visitor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
