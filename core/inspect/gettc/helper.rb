module Gettc
  def benchmark(message)
    print "#{message} .. "
    before = Time.now
    yield
    elapsed = (Time.now - before).round 2
    puts "#{elapsed}s"
  end

  def write_unless_exists(filename)
    return if File.exists?(filename)
    File.open(filename, "w") { |file| yield file }
  end
end
