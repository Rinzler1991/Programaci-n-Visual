class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :titulo
      t.text :descripcion

      t.timestamps
    end
  end
end
