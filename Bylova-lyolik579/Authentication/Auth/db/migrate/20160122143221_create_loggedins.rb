class CreateLoggedins < ActiveRecord::Migration
  def change
    create_table :loggedins do |t|
      t.string :name
      t.boolean :done

      t.timestamps null: false
    end
  end
end
