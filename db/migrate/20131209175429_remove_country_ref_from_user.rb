class RemoveCountryRefFromUser < ActiveRecord::Migration
  def change
    remove_reference :users, :country, index: true
  end
end
