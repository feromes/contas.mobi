class ChangeDebitoDefaultValueOnConta < ActiveRecord::Migration
  def up
    change_column(:conta, :debito, :boolean, :default => false)
  end

  def down
  end
end
