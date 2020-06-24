class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end

    create_table :user_rubrics do |t|
      t.belongs_to :user, :null => false, :index => true
      t.belongs_to :rubric, :null => false, :index => true
      t.references :user_rubricable, polymorphic: true, index: {name: 'user_rubricable'}
      t.timestamps
    end
  end
end
