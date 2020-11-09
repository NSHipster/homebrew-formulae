# typed: false
# frozen_string_literal: true

# :nodoc:
class SwiftGyb < Formula
  desc "Evaluates and runs Swift GYB scripts"
  homepage "https://github.com/NSHipster/swift-gyb"
  url "https://github.com/NSHipster/swift-gyb.git", tag: "0.1.0", revision: "eebe89d6a76d870ea481f4523121fb2cf761a89e"
  version "0.1.0"

  depends_on "nshipster/formulae/gyb"

  def install
    system "swift", "build",
           "--configuration", "release",
           "--disable-sandbox",
           "-Xswiftc", "-static-stdlib",
           "--build-path", buildpath.to_s

    bin.install buildpath/"release/swift-gyb" => "swift-gyb"
  end
end
