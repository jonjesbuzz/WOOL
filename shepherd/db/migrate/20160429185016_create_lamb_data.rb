class CreateLambData < ActiveRecord::Migration
  def change
    create_table :lamb_data do |t|
      t.integer :identifier
      t.float :activity
      t.float :light

      t.timestamps null: false
    end
  end
end
