class CreateCustomer < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :email
      t.integer :contact_number
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
