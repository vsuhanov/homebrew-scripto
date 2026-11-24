class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.43/scripto-v0.0.43-darwin-arm64.tar.gz"
      sha256 "855c2348cfd466569606f0e27e35d222186c81716f210ea506311fd127d1c4e9"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.43/scripto-v0.0.43-darwin-amd64.tar.gz"
      sha256 "a2399401cf1699e0c97093297c5c1e090d91eb61b24a3e7f19118adb58f0fabc"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
