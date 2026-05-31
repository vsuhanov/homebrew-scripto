class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.20/scripto-v0.0.20-darwin-arm64.tar.gz"
      sha256 "8fcdae11c45eec73403241b51aa08b82032cc62a5ec33c9d849dd8bf90355ed0"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.20/scripto-v0.0.20-darwin-amd64.tar.gz"
      sha256 "2626a511d5c30aa1e0f7cbed9fabcf39493d4e08503c45e63946775458b8d836"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
