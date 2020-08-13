class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :id
      t.string :multiverse_id
      t.string :name
      t.string :title
      t.string :artist
      t.string :type
      t.string :cost
      t.string :set
      t.string :rarity
      t.numeric :power
      t.numeric :toughness
      t.numeric :loyalty
      t.string :identity
      t.boolean :legal
      t.string :image_url

      t.timestamps
    end
  end
end
