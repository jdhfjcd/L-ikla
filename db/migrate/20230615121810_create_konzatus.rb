class CreateKonzatus < ActiveRecord::Migration[6.1]
  def change
    create_table :konzatus do |t|
      t.string :gakusyoku
      t.integer :komi
      t.timestamps
    end
  end
end
