class Philote < Formula
  desc "Simple pubsub websocket server."
  homepage "https://github.com/pote/philote"
  url "https://github.com/pote/philote/archive/v0.2.1.tar.gz"
  sha256 "33256cd1fbcfb5113cb9078e6328095dbc4d7742b3d2fb74f5b2068fa7ab20e4"

  depends_on "go"
  depends_on "gpm"

  def install
    ENV["GOPATH"] = buildpath
    system "make"
    bin.install "bin/philote" => "philote"
  end

  test do
    system "true"
  end
end
