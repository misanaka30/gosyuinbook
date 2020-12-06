class CreateGosyuins < ActiveRecord::Migration[6.0]
  def change
    create_table :gosyuins do |t|
      t.string      :title
      t.integer     :prefecture_id
      t.integer     :stamp_id
      t.integer     :limited_id
      t.text        :caption
      t.references  :user, foreign_key: true
      t.timestamps
    end
  end
end
