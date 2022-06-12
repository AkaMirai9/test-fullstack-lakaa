class CreateIndicateurs < ActiveRecord::Migration[7.0]
  def change
    create_table :indicateurs do |t|
      t.string :nom
      t.string :description
      t.string :donnees

      t.timestamps
    end
  end
end
