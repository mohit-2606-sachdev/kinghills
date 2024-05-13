class CreatePolicies < ActiveRecord::Migration[7.1]
  def change
    create_table :policies do |t|
      t.string :title
      t.text :description
      t.string :policy_type

      t.timestamps
    end
  end
end
