class Jane < Formula
  desc "A test CLI chat that uses Philote as it's backend."
  homepage "https://github.com/pote/jane"
  url "https://github.com/pote/jane/archive/v0.1.2.tar.gz"
  sha256 "b12fd11b3f105b122e7e6365f84c0a6e53e83a39895c52d584156114061010c0"

  depends_on "go"
  depends_on "gpm"

  def install
    ENV["GOPATH"] = buildpath
    system "make"
    bin.install "bin/jane" => "jane"
  end

  test do
    system "true"
  end
end
