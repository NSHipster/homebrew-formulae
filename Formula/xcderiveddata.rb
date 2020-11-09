# typed: false
# frozen_string_literal: true

# :nodoc:
class Xcderiveddata < Formula
  desc "Prints the path of the derived data directory for the current Xcode project"
  homepage "https://github.com/NSHipster/xcderiveddata"
  url "https://github.com/NSHipster/xcderiveddata.git", tag: "1.0.0", revision: "21a4bc3289f0cc04b8d4b835b2e00a1a2d144856"
  version "1.0.0"

  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
