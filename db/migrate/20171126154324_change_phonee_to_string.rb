class ChangePhoneeToString < ActiveRecord::Migration[5.1]
  def change
    change_column :shopmia, :phone, :string
  end
end
