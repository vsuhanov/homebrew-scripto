class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.44"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.44/scripto-v0.0.44-darwin-arm64.tar.gz"
      sha256 "2344fb512058fddbd30abd0070997ea0281396ee04f989a8a016304f3a09ff80"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.44/scripto-v0.0.44-darwin-amd64.tar.gz"
      sha256 "1fe4b6090d4828be023ebce41f73f4d5cdc509ff030aa5aa9ffbf8a8767f0d4c"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
