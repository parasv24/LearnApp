class CreateBatchesUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :batches_users do |t|
      t.references :batch, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :request_status

      t.timestamps
    end
  end
end
