class AddTypeToConta < ActiveRecord::Migration
  def change
    add_column :conta, :type, :string
  end
end
