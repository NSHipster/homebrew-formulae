# typed: false
# frozen_string_literal: true

# :nodoc:
class Xcprojectlint < Formula
  desc "Linter for Xcode project files"
  homepage "https://github.com/americanexpress/xcprojectlint"
  url "https://github.com/americanexpress/xcprojectlint.git", tag: "0.0.6", revision: "d9dad85847f5ee9b2143565a17d9066bb44b4b29"
  version "0.0.6"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"xcprojectlint", "--help"
  end
end
