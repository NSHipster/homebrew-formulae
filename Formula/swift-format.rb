class SwiftFormat < Formula
  desc "Formatting technology for Swift source code"
  homepage "https://github.com/NSHipster/swift-format"
  url "https://github.com/NSHipster/swift-format.git", :branch => "master"
  head "https://github.com/NSHipster/swift-format.git", :shallow => false

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-format"
  end
end
