class AddSaldoInicialToConta < ActiveRecord::Migration
  def change
    add_column :conta, :saldo_inicial, :decimal
  end
end
