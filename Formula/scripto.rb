class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.37"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.37/scripto-v0.0.37-darwin-arm64.tar.gz"
      sha256 "4fea1d3a5dc4ac6f4817501109359af74d1ab7d8c7d59531ce1fa8bb3ee3a5e9"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.37/scripto-v0.0.37-darwin-amd64.tar.gz"
      sha256 "4143ab718aa9a9737b4174a2d0c493f5432e3cfb7a2e39d97ce67a5f08b00154"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
