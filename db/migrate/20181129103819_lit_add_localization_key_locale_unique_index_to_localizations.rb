class LitAddLocalizationKeyLocaleUniqueIndexToLocalizations < Rails::VERSION::MAJOR >= 5   ?
                                                              ActiveRecord::Migration[4.2] :
                                                              ActiveRecord::Migration
  def change
    unless index_exists?(:lit_localizations, [:localization_key_id, :locale_id])
      add_index :lit_localizations, [:localization_key_id, :locale_id], unique: true
    end
  end
end
