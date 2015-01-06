class CreateHtmlData < ActiveRecord::Migration
  def change
    create_table :html_data do |t|
      t.string :title
      t.text :html
      t.timestamps
    end
  end
end
