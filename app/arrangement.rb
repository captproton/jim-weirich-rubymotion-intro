module Arrangement
  def make_label(text)
    label = UILabel.alloc.initWithFrame([0, 0], [150, 30])
    label.font = UIFont.systemFontOfSize(20)
    label.text = text
    label.textColor = darkGrayColor
    label.backgroundColor = UIColor.clearColor
    label
  end
  
  def make_button(title, action)
    button = UIButton.buttonWithType(UIButtonTypeRoundRect)
    button.frame = [[0, 0], 150, 44]
    button.setTitle(title, forState:UIControlStateNormal)
    button.setTitleColor(UIColor.blackColor, forState:UIControlStateNormal)
    button.backgroundColor = UIColor.clearColor
    button.addTarget(self, action: action, forControlEvents:UIControlEventTouchUpInside)
    button
  end
  
  class LayoutBuilder
    def initialize(view, xmargin, ymargin)
      @view = view
      @xmargin = xmargin
      @ymargin = ymargin
      @current_y = @ymargin
    end
  
    def <<(subview)
      height = subview.frame.size.height
      subview.frame = [
        [@xmargin, @current_y],
        [@view.frame.size.width - 2*@xmargin, height]
      ]
      @view.addSubview(subview)
      @current_y += height
      self
    end
  
    def arrange(view, xmargin, ymargin)
      layout_builder = LayoutBuilder.new(view, xmargin, ymargin)
      yield(layout_builder)
    end
  end
end