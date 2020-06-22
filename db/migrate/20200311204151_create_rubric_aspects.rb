class CreateRubricAspects < ActiveRecord::Migration[6.0]
  def change
    create_table :rubric_aspects do |t|
      t.string :name

      t.timestamps
    end
  end
end
