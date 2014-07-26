class AppDelegate < PM::Delegate

  status_bar true, animation: :none

  def on_load(app, options)
    puts "\n\nIS THIE CALLED\n\n"
    open HomeScreen.new(nav_bar: true)
  end

end
