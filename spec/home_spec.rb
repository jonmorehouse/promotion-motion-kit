describe "home spec" do

  before do
    #@app = UIApplication.sharedApplication
  end
  tests HomeScreen
  def controller
    @controller ||= HomeScreen.new
  end
  alias :screen :controller

  it "should have a motion-kit view" do
    tap screen.layout.pi

    wait 2.0 do
      1.should.equal 1 
    end
  end

end
