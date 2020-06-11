class SwiftSyntaxHighlight < Formula
  desc "Syntax highlighter for Swift code"
  homepage "https://github.com/NSHipster/SwiftSyntaxHighlighter"
  url "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", :tag => "1.0.1", :revision => "a8a92e5db3c4a710036b47d24a5fc9b98901582a"
  head "https://github.com/NSHipster/SwiftSyntaxHighlighter.git", :shallow => false

  depends_on :xcode => ["11.4", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-highlight" "--help"
  end
end
