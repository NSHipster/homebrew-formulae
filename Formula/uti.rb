class Uti < Formula
  desc "A command-line utility that prints the path of the derived data directory for the current Xcode project"
  homepage "https://github.com/NSHipster/uti"
  url "https://github.com/NSHipster/uti.git", tag: "1.0.1"
  head "https://github.com/NSHipster/uti.git", :shallow => false

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
