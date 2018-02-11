class BasicHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :basic_horses do |t|
      t.string :pedigree_register_code
      t.string :horse_name
      t.string :gender_code
      t.string :coat_color_code
      t.string :horse_symbol_code
      t.string :pedigree_info_father_name
      t.string :pedigree_info_mother_name
      t.string :pedigree_info_maternal_father_name
      t.date :pedigree_info_barth_on
      t.date :pedigree_info_father_barth_on
      t.date :pedigree_info_mother_barth_on
      t.date :pedigree_info_maternal_father_barth_on
      t.string :pedigree_info_owner_name
      t.string :pedigree_info_owner_belong_code
      t.string :pedigree_info_producer_name
      t.string :pedigree_info_production_place_name
      t.string :pedigree_info_register_del_flg
      t.date :pedigree_info_data_ymd
      t.string :pedigree_info_father_lineage_code
      t.string :pedigree_info_maternal_father_lineage_code

      t.timestamps
    end
  end
end
