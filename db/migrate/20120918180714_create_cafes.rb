class CreateCafes < ActiveRecord::Migration
  def up
    create_table 'cafes' do |t|
      t.string 'name'
      t.string 'bldg'
      t.string 'category'
      t.integer 'price'
      t.integer 'time'
      # Add fields that let Rails automatically keep track
      # of when movies are added or modified:
      t.timestamps
    end
  end

  def down
    drop_table 'cafes' # deletes the whole table and all its data!
  end
end