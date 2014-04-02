class Lessons < ActiveRecord::Migration
  def change

    create_table :courses do |t|
      t.column :name, :string
      t.column :content, :text
      t.column :lesson_number, :int

      t.timestamps
    end
  end
end
