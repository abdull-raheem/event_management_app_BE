class CreateEventUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :event_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
