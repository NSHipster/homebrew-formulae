# typed: false
# frozen_string_literal: true

# :nodoc:
class SwiftSyntaxHighlight < Formula
  desc "Syntax highlighter for Swift code"
  homepage "https://github.com/NSHipster/SwiftSyntaxHighlighter"
  url "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", tag: "1.2.0", revision: "1e5e5ef97b8ef61b178d8372c3995f8923f12268"
  version "1.2.0"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"swift-highlight", "--help"
  end
end
