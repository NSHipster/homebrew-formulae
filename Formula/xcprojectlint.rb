class Xcprojectlint < Formula
  desc "A linter for Xcode project files"
  homepage "https://github.com/americanexpress/xcprojectlint"
  url "https://github.com/americanexpress/xcprojectlint.git", :tag => "0.0.5"
  head "https://github.com/americanexpress/xcprojectlint.git", :shallow => false

  depends_on :xcode => ["10.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcprojectlint" "--help"
  end
end
