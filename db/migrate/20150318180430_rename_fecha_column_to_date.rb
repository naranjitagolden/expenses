class RenameFechaColumnToDate < ActiveRecord::Migration
  def change
  	rename_column :expenses, :fecha, :date
  end
end
