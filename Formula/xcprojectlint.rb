class Xcprojectlint < Formula
  desc "A linter for Xcode project files"
  homepage "https://github.com/americanexpress/xcprojectlint"
  url "https://github.com/nshipster/xcprojectlint.git", :tag => "0.1.0", :revision => "0c0e41d91fb6c45f57dce27d2fcc568596ece4ef"
  head "https://github.com/nshipster/xcprojectlint.git", :shallow => false

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcprojectlint" "--help"
  end
end
