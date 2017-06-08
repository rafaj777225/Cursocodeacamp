

class SuperSay
  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)
    do_something_with(text)
  end
end

class HtmlSay < SuperSay
  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

  def say(text)
    prepare_text(text)
  end

  def prepare_text(text)

  end
end

class CssSay 
  def say(text)
    "<p>" + prepare_text(text) + "</p>"
  end

  def prepare_text(text)
    do_something_with(text)
  end

  def do_something_with(text)

  end
end

doc = CssSay.new
style = CssSay.new
#test
p doc.say("You've refactored") == "<p>You've refactored</p>"
p style.say("I like to code") == "I like to code"