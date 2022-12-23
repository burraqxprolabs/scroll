class CreateTenant < ActiveRecord::Migration[6.0]
  def change
    create_table :tenants do |t|
      t.string :title
      t.references :user
      t.references :business

      t.timestamps null: false
    end
  end
end
