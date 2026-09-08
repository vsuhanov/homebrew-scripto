class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.35/scripto-v0.0.35-darwin-arm64.tar.gz"
      sha256 "f6e84c3663d154facc569944526e775c4cc5577971781d7ea8eef7a2753aa13b"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.35/scripto-v0.0.35-darwin-amd64.tar.gz"
      sha256 "ad4faf32d55f0c32abfc0a115bfe7389dbff11702ef0eefd736811cfa8f2abf0"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
