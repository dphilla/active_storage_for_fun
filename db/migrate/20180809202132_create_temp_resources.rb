class CreateTempResources < ActiveRecord::Migration[5.2]
  def change
    create_table :temp_resources do |t|

      t.timestamps
    end
  end
end
