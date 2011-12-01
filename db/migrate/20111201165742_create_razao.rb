class CreateRazao < ActiveRecord::Migration
  def change
    create_table :razao do |t|
      t.date :data_do_lancamento
      t.decimal :valor
      t.references :conta
      t.references :user

      t.timestamps
    end
    add_index :razao, :conta_id
    add_index :razao, :user_id
  end
end
