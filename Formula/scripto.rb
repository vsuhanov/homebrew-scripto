class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.17/scripto-v0.0.17-darwin-arm64.tar.gz"
      sha256 "febb12a764ab01182da802ea3878634c04d0b9dd65790cb6d408c0eabebdd3b1"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.17/scripto-v0.0.17-darwin-amd64.tar.gz"
      sha256 "bc48074e5a9530cbbdc12d71f0f9fafff21fcaa15598c11a9e02dc9952252b2c"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
