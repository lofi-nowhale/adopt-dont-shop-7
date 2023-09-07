class AddColumnToPetApplicants < ActiveRecord::Migration[7.0]
  def change
    add_column :pet_applicants, :reason_for_adoption, :string
  end
end
