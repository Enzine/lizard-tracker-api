class RenameDinnerCriketsToDinnerCrickets < ActiveRecord::Migration[5.0]
  def change
    rename_column :entries, :dinner_crikets, :dinner_crickets
  end
end
