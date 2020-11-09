# typed: false
# frozen_string_literal: true

# :nodoc:
class Gyb < Formula
  desc "\"Generate Your Boilerplate\""
  homepage "https://nshipster.com/swift-gyb/"
  url "https://raw.githubusercontent.com/apple/swift/17e5594bec7cebe980857e4fe3e05837708f9f62/utils/gyb"
  version "2019-01-18"
  sha256 "0a97b3ac257fa29d6240d1878590facd1d80053491cc14601f7e68bb182a29b1"

  depends_on xcode: ["10.0", :build]

  resource "gyb.py" do
    url "https://raw.githubusercontent.com/apple/swift/dab60f04ca98c573378a5e78ed85d5a27a7ca2e0/utils/gyb.py"
    sha256 "4693b65a8ea54173e20f2565a105af62d57d0e6f66540ea096e7caee737630f7"
    version "2019-01-18"
  end
  depends_on "python@2" if MacOS.version <= :snow_leopard

  def install
    resource("gyb.py").stage { bin.install "gyb.py" }
    bin.install "gyb"
    chmod 0755, bin/"gyb"
  end

  test do
    system bin/"gyb", "--help"
  end
end
