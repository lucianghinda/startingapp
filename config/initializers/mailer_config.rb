file_path = Rails.root.join('config', 'mailer_config.yml')

if file_path.exist?
  Rails.application.config.action_mailer.delivery_method = :smtp
  Rails.application.config.action_mailer.smtp_settings = YAML.load_file(file_path).symbolize_keys
end