class CreateVoices < ActiveRecord::Migration[5.2]
  def change
    create_table :voices do |t|
      t.string     :name
      t.string     :anime
      t.string     :game
      t.string     :other
      t.timestamps
    end
  end
end
