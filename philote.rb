class Philote < Formula
  desc "Simple pubsub websocket server."
  homepage "https://github.com/pote/philote"
  url "https://github.com/pote/philote/archive/v0.3.1.tar.gz"
  sha256 "0a55432657024fbf66b81d315bfcf7e5e547f6ff75cda8a4ddba1d3ce341cff0"

  depends_on "go"
  depends_on "gpm"

  def install
    ENV["GOPATH"] = buildpath
    system "make"
    bin.install "bin/philote" => "philote"
  end

  plist_options :manual => "philote"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
      <dict>
        <key>KeepAlive</key>
        <dict>
          <key>SuccessfulExit</key>
          <false/>
        </dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>ProgramArguments</key>
        <array>
          <string>#{opt_bin}/philote</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
        <key>WorkingDirectory</key>
        <string>#{var}</string>
        <key>StandardErrorPath</key>
        <string>#{var}/log/philote.log</string>
        <key>StandardOutPath</key>
        <string>#{var}/log/philote.log</string>
      </dict>
    </plist>
    EOS
  end

  test do
    system "true"
  end
end
