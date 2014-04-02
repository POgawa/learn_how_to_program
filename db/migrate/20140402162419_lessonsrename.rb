class Lessonsrename < ActiveRecord::Migration
  def change
    rename_table :courses, :lessons
  end
end
