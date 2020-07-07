class CreateShowClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :show_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
