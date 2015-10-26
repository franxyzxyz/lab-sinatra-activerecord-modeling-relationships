class CreateCourseTable < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
    end
  end
end
