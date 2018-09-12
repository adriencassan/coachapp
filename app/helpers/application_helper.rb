module ApplicationHelper


  def make_https(string)
    return string if string.nil?
    splitted = string.split(":")
    splitted[0] << "s:"
    splitted[0] + splitted[1]
  end
end
