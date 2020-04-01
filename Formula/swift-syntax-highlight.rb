class SwiftSyntaxHighlight < Formula
  desc "Syntax highlighter for Swift code"
  homepage "https://github.com/NSHipster/SwiftSyntaxHighlighter"
  url "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", :tag => "1.0.0", :revision => "4a20d10bba17241b66650d99081801536146b43c"
  head "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", :shallow => false

  depends_on :xcode => ["11.4", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-highlight" "--help"
  end
end
