class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.33/scripto-v0.0.33-darwin-arm64.tar.gz"
      sha256 "217a4d3258c0f69cb4816a74f6a20f3f43d454c769a80c8a4372fc775debeb2b"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.33/scripto-v0.0.33-darwin-amd64.tar.gz"
      sha256 "5d903de5b438e55f82787adecc2f6f5f076a49b8521ef0fedf37bf205d499586"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
