class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :nome
      t.boolean :debito
      t.text :descricao
      t.text :detalhes
      t.references :user
      t.integer :parent_id

      t.timestamps
    end
    add_index :conta, :user_id
  end
end
