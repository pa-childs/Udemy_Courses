module AppStore

  App = Struct.new(:name, :developer, :version)

  APPS = [
    App.new(:Chat, :NewComm, 2.0),
    App.new(:Email, :OldComm, 10.0),
    App.new(:Weather, :NOAA, 6.0)
  ]

  def self.find_app(name)

    APPS.find { |app| app.name == name }

  end

end
