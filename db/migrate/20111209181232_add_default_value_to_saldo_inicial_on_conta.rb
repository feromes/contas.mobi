class AddDefaultValueToSaldoInicialOnConta < ActiveRecord::Migration
  def change
    change_column(:conta, :saldo_inicial, :decimal, :default => 0.0)
  end
end
