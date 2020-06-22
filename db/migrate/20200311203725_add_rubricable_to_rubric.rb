class AddRubricableToRubric < ActiveRecord::Migration[6.0]
  def change
    add_reference :rubrics, :rubricable, polymorphic: true
  end
end
