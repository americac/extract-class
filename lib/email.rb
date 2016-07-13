class Email
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/

  def initialize(recipients)
    @recipients = recipients
  end

  def remove_spaces
    @recipients.gsub(/\s+/, '').split(/[\n,;]+/)
  end

  def is_email?(email)
    email.match(EMAIL_REGEX)
  end
end
