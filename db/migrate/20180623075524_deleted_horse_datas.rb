class DeletedHorseDatas < ActiveRecord::Migration[5.1]
  def change
    create_table :deleted_horse_datas do |t|
      t.string :jockey_code
    end
  end
end
