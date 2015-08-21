class CreateFortuneMessages < ActiveRecord::Migration
  def change
    create_table :fortune_messages do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
