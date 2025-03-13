Rails.application.configure do
    config.cache_classes = false
    config.eager_load = false
    config.consider_all_requests_local = true
  
    config.active_storage.service = :local
    config.public_file_server.enabled = true
  
    # Disable database role switching if not needed
    config.active_record.database_selector = nil
    config.active_record.database_resolver = nil
  
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
    config.action_mailer.delivery_method = :test
  
    config.active_record.dump_schema_after_migration = false
  end