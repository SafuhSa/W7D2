class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.boolean :done

      t.timestamps
    end
    add_index :todos, :title
    add_index :todos, :body
  end
end
