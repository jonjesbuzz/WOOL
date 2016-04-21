class CreateLoraMessages < ActiveRecord::Migration
  def change
    create_table :lora_messages do |t|
      t.string :payload

      t.timestamps null: false
    end
  end
end
