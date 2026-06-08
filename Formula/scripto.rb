class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.27/scripto-v0.0.27-darwin-arm64.tar.gz"
      sha256 "bbc9f91c0eab1d0aa0edd4a0d3aefc5eb89372c2c8c576df7fbc8476b143a823"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.27/scripto-v0.0.27-darwin-amd64.tar.gz"
      sha256 "5502d2e2e998448cea0124d8b5968a44d4de7fe133a1b641bdb152ffe517e564"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
