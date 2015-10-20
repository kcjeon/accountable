class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|

    	t.string :desire
    	t.string :person

      	t.timestamps
    end
  end
end
