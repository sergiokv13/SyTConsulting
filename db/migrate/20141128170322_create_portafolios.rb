class CreatePortafolios < ActiveRecord::Migration
  def change
    create_table :portafolios do |t|
      t.string :titulo_portafolio
      t.text :descripcion_portafolio

      t.timestamps
    end
  end
end
