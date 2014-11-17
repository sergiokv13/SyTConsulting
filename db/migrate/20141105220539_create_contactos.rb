class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :correo_electronico
      t.string :telefono
      t.text :mensaje

      t.timestamps
    end
  end
end
