class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.34/scripto-v0.0.34-darwin-arm64.tar.gz"
      sha256 "14c477708927d8f936dd309ea4f942b17e63290b745fd6ba323267d19ac1a499"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.34/scripto-v0.0.34-darwin-amd64.tar.gz"
      sha256 "76dc2678e201a7a1c5b9756c905f66c51aa1bd5e32c2e62e4d15bd6d2f45edc5"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
