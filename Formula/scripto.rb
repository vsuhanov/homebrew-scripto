class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.38/scripto-v0.0.38-darwin-arm64.tar.gz"
      sha256 "6e5279b135e37eab79d1ae1d4bd105e23f17ce52feffac358e416d6543acfee2"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.38/scripto-v0.0.38-darwin-amd64.tar.gz"
      sha256 "9c79f0dc64685e8d38f22864c61443e8df1fc0f2dba0349e201f8539e4c3eca5"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
