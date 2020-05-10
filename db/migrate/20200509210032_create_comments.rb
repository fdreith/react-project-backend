class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :task, null: false, foreign_key: true
      t.belongs_to :employee, foreign_key: true
      t.belongs_to :supervisor, foreign_key: true

      t.timestamps
    end
  end
end
