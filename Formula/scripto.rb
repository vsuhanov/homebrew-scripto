class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.42/scripto-v0.0.42-darwin-arm64.tar.gz"
      sha256 "5d7ce674efa31430196ccf62effa7039caaa4abb0eec69b44e4e577c7e8bd5b1"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.42/scripto-v0.0.42-darwin-amd64.tar.gz"
      sha256 "b9eb0fbdcc43e9602250a93c384645fb5b5d4cc440dd2e5930277cd0e05085bc"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
