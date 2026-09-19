class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.39"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.39/scripto-v0.0.39-darwin-arm64.tar.gz"
      sha256 "267e83b63c1d3acf92cee6bd4e51565fc33c8f10bd41bd9e2a040dc6faf073ab"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.39/scripto-v0.0.39-darwin-amd64.tar.gz"
      sha256 "b43492f9da70d9c13de61168ebb33e685af84371aaaad249a627f803374ef9fe"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
