class GeneralCalciumToEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :general_calcium, :boolean
  end
end
