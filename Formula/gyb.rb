class Gyb < Formula
  desc "\"Generate Your Boilerplate\""
  homepage "https://nshipster.com/swift-gyb/"
  url "https://raw.githubusercontent.com/apple/swift/17e5594bec7cebe980857e4fe3e05837708f9f62/utils/gyb"
  version "2019-01-18"
  sha256 "0a97b3ac257fa29d6240d1878590facd1d80053491cc14601f7e68bb182a29b1"

  depends_on :xcode => ["10.0", :build]

  resource "gyb.py" do
    url "https://raw.githubusercontent.com/apple/swift/02603ca57a23bf2f9348312a2eb41f3abd426d4a/utils/gyb.py"
    sha256 "4f8b1ef12819c36c3aad6fab0d328f3e670924af9dc275b0f37ea55bb62b8b40"
    version "2019-01-18"
  end
  depends_on "python@2" if MacOS.version <= :snow_leopard

  def install
    resource("gyb.py").stage { bin.install "gyb.py" }
    bin.install "gyb"
    system "chmod", "+x", File.join(bin, "gyb")
  end

  test do
    system "#{bin}/gyb" "--help"
  end
end
