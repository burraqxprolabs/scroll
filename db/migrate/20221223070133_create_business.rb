class CreateBusiness < ActiveRecord::Migration[6.0]
  def change
    create_table :businesses do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
