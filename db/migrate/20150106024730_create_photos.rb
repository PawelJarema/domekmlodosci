class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.has_attached_file :photo
      t.timestamps
    end
  end
end
