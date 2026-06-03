class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.23/scripto-v0.0.23-darwin-arm64.tar.gz"
      sha256 "003009980fb1ed3b5a711fd52d9e0e2e4c8271a1533fd2faaefe83857e8fb771"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.23/scripto-v0.0.23-darwin-amd64.tar.gz"
      sha256 "eaec22ea474ef5d48bd349889496b41b54a5ce2ef3079dddc4ccec6bf9bac323"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
