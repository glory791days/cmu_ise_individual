class ChangecafeColumnname < ActiveRecord::Migration
  def up
		rename_column(:cafes, :bldg, :place)
  end

  def down
		rename_column(:cafes, :place, :bldg)
  end
end
