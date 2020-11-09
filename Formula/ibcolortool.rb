# typed: false
# frozen_string_literal: true

# :nodoc:
class Ibcolortool < Formula
  desc "Lists colors in Storyboards and XIB files"
  homepage "https://github.com/NSHipster/ibcolortool"
  url "https://github.com/NSHipster/ibcolortool.git", tag: "0.0.1"
  version "0.0.1"

  depends_on :macos
  depends_on :xcode

  def install
    system "make", "install", "prefix=#{prefix}"
  end
end
