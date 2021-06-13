class AddColumns2ToHabitsets < ActiveRecord::Migration[5.1]
  def change
    add_column :habitsets, :habitset_parent_id, :integer
    add_column :habitsets, :fit_quantity, :float
    add_column :habitsets, :fit_weight, :float
    add_column :habitsets, :fit_is_max, :boolean
    add_column :habitsets, :he_kcal, :float
    add_column :habitsets, :he_protein, :float
    add_column :habitsets, :he_carb, :float
    add_column :habitsets, :he_fat, :float
    add_column :habitsets, :result_photo, :string
  end
end
