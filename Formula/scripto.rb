class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.21/scripto-v0.0.21-darwin-arm64.tar.gz"
      sha256 "7dc39780199c754abf45cde0cc6d5400e206b1d984d5a48926601a72b00d4cf5"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.21/scripto-v0.0.21-darwin-amd64.tar.gz"
      sha256 "60b217d3d6a06d62800c2f3ca25a6634b38cae834938e326322939494f24bfca"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
