class CreateCertificacions < ActiveRecord::Migration
  def change
    create_table :certificacions do |t|
      t.string :titulo_certificacion
      t.text :descripcion_certificacion

      t.timestamps
    end
  end
end
