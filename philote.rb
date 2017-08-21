class Philote < Formula
  desc "Simple pubsub websocket server."
  homepage "https://github.com/pote/philote"
  url "https://github.com/pote/philote/archive/v0.3.0.tar.gz"
  sha256 "e302aa2413d2e85e4825ae701150890596a3404c3e054101158dd46a7d38e566"

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
