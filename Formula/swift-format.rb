# typed: false
# frozen_string_literal: true

# :nodoc:
class SwiftFormat < Formula
  desc "Formatting technology for Swift source code"
  homepage "https://github.com/NSHipster/swift-format"
  url "https://github.com/apple/swift-format.git", tag: "0.50300.0", revision: "12089179aa1668a2478b2b2111d98fa37f3531e3"
  version "0.50300.0"
  head "https://github.com/apple/swift-format.git", shallow: false

  depends_on xcode: ["12.0", :build]

  def install
    system "swift", "build",
           "-c", "release",
           "--disable-sandbox",
           "--build-path", buildpath.to_s

    bin.install buildpath/"release/swift-format" => "swift-format"
  end

  test do
    system bin/"swift-format", "--help"
  end
end
