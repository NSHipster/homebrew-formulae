class Ibcolortool < Formula
  desc "A command-line utility that lists colors in Storyboards and XIB files"
  homepage "https://github.com/NSHipster/ibcolortool"
  url "https://github.com/NSHipster/ibcolortool.git", tag: "0.0.1"
  head "https://github.com/NSHipster/ibcolortool.git", :shallow => false

  depends_on :macos
  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
