class Hex < ActiveRecord::Migration[5.1]
  def change
	  create_table :hex do |t|
    t.string :name, null: false, default: ""

    # t.timestamps, null: false
  	end

  	# add_index :resources, :name, unique: true
  end
end
