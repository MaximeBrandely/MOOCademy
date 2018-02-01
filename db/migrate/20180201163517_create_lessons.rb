class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.integer :courses_id
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
