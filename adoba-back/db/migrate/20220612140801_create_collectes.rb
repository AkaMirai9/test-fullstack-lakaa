class CreateCollectes < ActiveRecord::Migration[7.0]
  def change
    create_table :collectes do |t|
      t.string :date
      t.string :assos

      t.timestamps
    end
  end
end
