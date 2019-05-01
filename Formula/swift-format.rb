class SwiftFormat < Formula
  desc "A (proposed) official formatter for Swift"
  homepage "https://github.com/NSHipster/swift-format"
  url "https://github.com/NSHipster/swift-format.git", :branch => "format"
  head "https://github.com/NSHipster/swift-format.git", :shallow => false

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-format"
  end
end
