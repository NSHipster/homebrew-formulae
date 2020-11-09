# typed: false
# frozen_string_literal: true

# :nodoc:
class SwiftSyntaxHighlight < Formula
  desc "Syntax highlighter for Swift code"
  homepage "https://github.com/NSHipster/SwiftSyntaxHighlighter"
  url "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", tag: "1.1.3", revision: "b086ef5066b6f799f9c7d6d7fc1553581b55ef1e"
  version "1.1.3"

  depends_on xcode: ["12.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system bin/"swift-highlight", "--help"
  end
end
