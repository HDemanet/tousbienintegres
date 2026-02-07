class RemoveActiveStorageTables < ActiveRecord::Migration[7.1]
  def up
    # ✅ BON ORDRE : supprimer les dépendances d'abord
    drop_table :active_storage_attachments, if_exists: true
    drop_table :active_storage_variant_records, if_exists: true  # Avant blobs !
    drop_table :active_storage_blobs, if_exists: true
  end

  def down
    # Ne pas recréer
  end
end