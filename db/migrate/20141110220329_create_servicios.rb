class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre_servicio
      t.text :descripcion_servicio

      t.timestamps
    end
  end
end
