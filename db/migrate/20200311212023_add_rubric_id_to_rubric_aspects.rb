class AddRubricIdToRubricAspects < ActiveRecord::Migration[6.0]
  def change
    add_column :rubric_aspects, :rubric_id, :integer
  end
end
