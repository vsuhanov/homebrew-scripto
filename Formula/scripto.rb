class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.19/scripto-v0.0.19-darwin-arm64.tar.gz"
      sha256 "046e04f14285f2218335e0e9852f09cc4b07da782a3877e1bb46508bec88920d"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.19/scripto-v0.0.19-darwin-amd64.tar.gz"
      sha256 "14026abe7a3450522242206fc9d4e1a0c69e90c9c96f7187b4b8f643a8ab908e"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
