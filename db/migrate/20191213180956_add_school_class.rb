class AddSchoolClass < ActiveRecord::Migration[5.0]
  def change
    create_table :shcool_classes do |t|
      t.string :title
      t.integer :room_number
    end
  end
end
