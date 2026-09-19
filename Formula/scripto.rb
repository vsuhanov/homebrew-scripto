class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.40/scripto-v0.0.40-darwin-arm64.tar.gz"
      sha256 "b27dd3f216e663c7f5c814a1ce35f47a735f56f821fcf320a671e65d4b3ef0d0"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.40/scripto-v0.0.40-darwin-amd64.tar.gz"
      sha256 "0e394557caa375c2429152a5a37047c9d6e0db61ec75a6c51802d709e9b9aced"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
