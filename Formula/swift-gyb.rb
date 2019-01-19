class SwiftGyb < Formula
  desc "Evaluates and runs Swift GYB scripts"
  homepage "https://github.com/NSHipster/swift-gyb"
  url "https://github.com/NSHipster/swift-gyb.git", :tag => "0.1.0", :revision => "eebe89d6a76d870ea481f4523121fb2cf761a89e"
  head "https://github.com/NSHipster/swift-gyb.git", :shallow => false

  depends_on "nshipster/formulae/gyb"

  def install
    system "swift", "build",
      "--configuration", "release",
      "-Xswiftc", "-static-stdlib",
      "--disable-sandbox"
    bin.install ".build/release/swift-gyb"
  end
end
