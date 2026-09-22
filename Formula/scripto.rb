class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.41/scripto-v0.0.41-darwin-arm64.tar.gz"
      sha256 "e9d7c0f1d618d3b534933a6112f4a7a3c96714ca371eeee3526f92716760302d"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.41/scripto-v0.0.41-darwin-amd64.tar.gz"
      sha256 "b40c299afa33fd01613bf8f98d7e4a047ab8a336642307c5abb90032b0def24f"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
