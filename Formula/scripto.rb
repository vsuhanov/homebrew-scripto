class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.18/scripto-v0.0.18-darwin-arm64.tar.gz"
      sha256 "fbc4ef6de235d7c0d37d40a2af22cc20939f240d9978e552df4c18e772edf7d0"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.18/scripto-v0.0.18-darwin-amd64.tar.gz"
      sha256 "ba33360403b9653ac4298ecec768a907d79838040b89e82119759f4d69653990"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
