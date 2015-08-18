class AddDefaultToLinkCounter < ActiveRecord::Migration
  def up
    #migrate
    change_column :links, :counter, :integer, :default => 0

    Link.all.each do |link|
      if link.counter == nil
        link.counter = 0
        link.save
      end
    end
  end

  def down
    #rollback
    change_column :links, :counter, :integer, :default => nil
  end
end
