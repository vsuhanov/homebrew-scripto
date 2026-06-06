class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.26/scripto-v0.0.26-darwin-arm64.tar.gz"
      sha256 "baa254e9ea0074595dd91d83c493b9e51187706780a86a6cec6c3620aea75bdc"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.26/scripto-v0.0.26-darwin-amd64.tar.gz"
      sha256 "2fd112d3958dd3d13cff54975f9d03266f29e936b1ce63bda24577dc77675c1e"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
