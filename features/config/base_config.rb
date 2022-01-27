module BaseConfig
  @environment = ENV['environment'] || 'prod'
  def self.environment
    @environment
  end
  @browser = ENV['browser'] || 'chrome'
  def self.browser
    @browser
  end
end
