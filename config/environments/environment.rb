Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: "gjarnos",
    password: "Zqxwcevrbtny7",
    enable_starttls_auto: true
  }
end