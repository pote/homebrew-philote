class Jane < Formula
  desc "A test CLI chat that uses Philote as it's backend."
  homepage "https://github.com/pote/jane"
  url "https://github.com/pote/jane/archive/v0.1.3.tar.gz"
  sha256 "bb3a96d048a51eeea97832672e6b2f9d0d2ed8043f856ed68c60574547d41f83"

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
