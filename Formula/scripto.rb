class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.30"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.30/scripto-v0.0.30-darwin-arm64.tar.gz"
      sha256 "fb95d681c8b2c51de42e75883044ab9a7c1e438b57fa0b4384f814e29a762aad"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.30/scripto-v0.0.30-darwin-amd64.tar.gz"
      sha256 "24b77dfd5a9be04443a254c77b76246614219557f6af9954fbb23b415e0d71ce"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
