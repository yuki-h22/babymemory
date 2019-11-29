class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.string :birthday, null: false
      t.string :image
      t.string :meimei
      t.string :mhug
      t.string :phug
      t.string :fphoto
      t.string :imhome
      t.string :finger
      t.string :bathing
      t.string :diapers
      t.string :hund
      t.string :walking
      t.string :bathingwith1
      t.string :sleepingface1
      t.string :discovery
      t.string :cream
      t.string :saycheese1
      t.string :neck
      t.string :bathingwith2
      t.string :get
      t.string :tooth
      t.string :roll
      t.string :babyfood
      t.string :brush
      t.string :sleepingface2
      t.string :saycheese2
      t.string :high
      t.string :mam
      t.string :high2
      t.string :looking
      t.string :sit
      t.string :stand
      t.string :high3
      t.string :straw
      t.string :sleepingface3
      t.string :saycheese3
      t.string :imitate
      t.string :go
      t.string :hair
      t.string :katikati
      t.string :follow
      t.string :pause
      t.string :walk
      t.string :yam
      t.string :sleepingface4
      t.string :saycheese4
      t.string :imitate2
      t.timestamps
    end
  end
end
