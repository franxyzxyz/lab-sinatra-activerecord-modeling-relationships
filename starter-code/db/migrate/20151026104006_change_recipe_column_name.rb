class ChangeRecipeColumnName < ActiveRecord::Migration
  def change
    rename_column :recipes, :Servings, :servings
  end
end
