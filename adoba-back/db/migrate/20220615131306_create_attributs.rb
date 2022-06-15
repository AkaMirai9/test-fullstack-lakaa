class CreateAttributs < ActiveRecord::Migration[7.0]
  def change
    create_table :attributs do |t|
      t.string :name
      t.string :desc
      t.string :datas
      t.integer :collecteid

      t.timestamps
    end
  end
end
