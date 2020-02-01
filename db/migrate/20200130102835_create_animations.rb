class CreateAnimations < ActiveRecord::Migration[5.2]
  def change
    create_table :animations do |t|
      t.bigint     :voice_id, null: false
      t.string     :title
      t.timestamps
    end
  end
end
