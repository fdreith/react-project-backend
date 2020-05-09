class CreateTcomments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.belongs_to :task, null: false, foreign_key: true
      t.belongs_to :employee, null: false, foreign_key: true
      t.belongs_to :supervisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
