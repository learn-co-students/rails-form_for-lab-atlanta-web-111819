class RenameTableShcoolClassesToSchoolClasses < ActiveRecord::Migration[5.0]
  def change
    rename_table :shcool_classes, :school_classes
  end
end
