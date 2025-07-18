class CreateUloomQuranByWords < ActiveRecord::Migration[7.0]
  def change
    c = Verse.connection
    c.create_table :uloom_quran_by_words do |t|
      t.text    :text,                index: true
      t.string  :cardinality_type,    index: true
      t.integer :language_id,         index: true
      t.string  :language_name,       index: true
      t.integer :resource_content_id, index: true
      t.integer :chapter_id,          index: true
      t.integer :verse_id,            index: true
      t.integer :word_id,             index: true
      t.integer :from,                index: true
      t.integer :to,                  index: true

      t.jsonb   :meta_data,           default: {}, null: false

      t.timestamps
    end
  end
end
