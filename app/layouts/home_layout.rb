class HomeLayout < MK::Layout
  view :movies_view
  attr_reader :pi

  def layout
    root :home do
      @pi = add UIButton, :profile_image_button
      add UIImageView, :profile_image
      add UILabel, :profession
      add movies_view, :movies_view
    end
    @pi.on :touch do
      puts "THIS WAS TOUCHED"
    end
  end

  def profile_image_button_style
    puts "HERE"
    constraints do
      left 100
      width 50
      top 100
      height 50
    end

    background_color :orange.uicolor
  end

  def home_style
    background_color "#F9F9F9".uicolor
  end

  def profile_image_style
    image "jimcarrey".uiimage
    clips_to_bounds true
    layer do
      corner_radius 50.0
    end
    constraints do
      left 20
      top 42
      width 50
      height 50
    end
  end

  def profession_style
    text "Actor, Comedian"
    font UIFont.boldSystemFontOfSize(20)
    constraints do
      top 118
      right_of(:profile_image).plus(20)
      height 30
    end
  end

  def movies_view_style
    top 200
    left 0
    right "100%"
  end

end
