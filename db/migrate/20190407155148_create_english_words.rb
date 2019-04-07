class CreateEnglishWords < ActiveRecord::Migration[5.2]
  def change
    create_table :english_words do |t|
      t.string :word
      t.string :word_meaning
      t.text :sentence
      t.text :sentence_meaning

      t.timestamps
    end
  end
end
