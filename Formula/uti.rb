# typed: false
# frozen_string_literal: true

# :nodoc:
class Uti < Formula
  desc "Prints the path of the derived data directory for the current Xcode project"
  homepage "https://github.com/NSHipster/uti"
  url "https://github.com/NSHipster/uti.git", tag: "1.0.1", revision: "7f2cfafc410760354052542a3f112ea1fc577824"
  version "1.0.1"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
