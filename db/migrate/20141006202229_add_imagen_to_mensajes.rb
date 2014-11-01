class AddImagenToMensajes < ActiveRecord::Migration
  def change
    add_column :mensajes, :imagen, :string
  end
end
