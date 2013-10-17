class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.integer :typee, :default => 1 #1-台式机；2-笔记本；3-显示器；4-虚拟资产；5-其他资产
      t.datetime :buy_at
      t.decimal :price,:precision => 8, :scale => 2
      t.string :status #状态 1-闲置；2-分配；3-维修；4-损坏；5-废弃
      t.string :number #资产编号
      t.string :name #品牌
      t.string :model #型号
      t.string :s_number #服务代号
      t.string :cpu
      t.string :mem
      t.string :disk
      t.string :display
      t.string :zhibao #质保
      t.text :desc
      t.text :mark
    end
    
    #device and user
    create_table :device_users do |t|
      t.integer :user_id
      t.integer :author_id
      t.integer :device_id
      t.integer :action_type #1-分配；2-收回；3-赠送
      t.datetime :t
    end
    
    #add index
    add_index :devices, :user_id
    add_index :devices, :typee
    
  end
end
