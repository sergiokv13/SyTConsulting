class CreateInformacions < ActiveRecord::Migration
  def change
    create_table :informacions do |t|
      t.text :contenido_informacion

      t.timestamps
    end
  end
end
