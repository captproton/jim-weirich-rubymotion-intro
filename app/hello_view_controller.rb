class HelloViewController < UIViewController
  include Layout
  
  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    
    layout(view, 10, 10) do |lb|
      @hello = make_label("Hello, World")
      @pushme = make_button("Push me", "pushed")
      @clear_counter = make_button("Clear", "clear_counter")
      
      lb << @hello << @pushme << @clear_counter
    end

    def pushed
      @counter ||= 0
      @counter += 1
      @hello.text = "Hello, World (#{@counter})"
    end
    
    def clear_counter
      @counter = 0
      @hello.text = "Hello, World"
    end
  end
  
  
  
end