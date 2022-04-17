class RenameIntroductionColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :introduction, :body
  end
end
