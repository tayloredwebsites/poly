class CreateUserJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :user_joins do |t|
      t.belongs_to :user, :null => false, :index => true
      t.references :user_joinable, polymorphic: true, index: {name: 'user_joinable'}
      t.timestamps
    end
  end
end
