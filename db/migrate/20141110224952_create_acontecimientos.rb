class CreateAcontecimientos < ActiveRecord::Migration
  def change
    create_table :acontecimientos do |t|
      t.string :periodo_acontecimiento
      t.string :titulo_acontecimiento
      t.text :descripcion_acontecimiento

      t.timestamps
    end
  end
end
