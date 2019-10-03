class Xcderiveddata < Formula
  desc "A command-line utility that prints the path of the derived data directory for the current Xcode project"
  homepage "https://github.com/NSHipster/xcderiveddata"
  url "https://github.com/NSHipster/xcderiveddata.git", tag: "1.0.0"
  head "https://github.com/NSHipster/xcderiveddata.git", :shallow => false

  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
