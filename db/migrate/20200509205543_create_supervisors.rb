class CreateSupervisors < ActiveRecord::Migration[6.0]
  def change
    create_table :supervisors do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.belongs_to :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
