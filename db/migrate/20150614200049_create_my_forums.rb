class CreateMyForums < ActiveRecord::Migration
  def change
    create_table :my_forums do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
