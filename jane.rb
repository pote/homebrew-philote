class Jane < Formula
  desc "A test CLI chat that uses Philote as it's backend."
  homepage "https://github.com/pote/jane"
  url "https://github.com/pote/jane/archive/v0.1.1.tar.gz"
  sha256 "3ede54f1d7848c047c4f2269852eaa909716d2220dc749844fca8978424364ab"

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
