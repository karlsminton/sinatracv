class Pages < ActiveRecord::Migration[7.0]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :urlkey
      t.text :content
      t.timestamps
    end
  end
end
