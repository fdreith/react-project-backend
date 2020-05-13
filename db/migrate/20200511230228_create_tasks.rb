class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :content
      t.string :due_date
      t.boolean :completed, default: false
      t.belongs_to :user, null: false, foreign_key: true
      t.integer :owner_id

      t.timestamps
    end
  end
end
