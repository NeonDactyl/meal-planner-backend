class ChangeInstructionSetName < ActiveRecord::Migration[6.0]
  def change
    rename_column :recipes, :instructionSet, :instruction_set
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
