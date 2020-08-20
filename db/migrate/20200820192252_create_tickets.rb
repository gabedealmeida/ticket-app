class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name, :status
      t.text :body
      t.references :project
      t.references :user
      t.integer :assignee

      t.timestamps
    end
  end
end
