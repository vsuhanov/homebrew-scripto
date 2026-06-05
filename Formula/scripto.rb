class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.24/scripto-v0.0.24-darwin-arm64.tar.gz"
      sha256 "f32b663c0141c6d71da8eb3c913ba55d7af3da7636a82baf6dc47a8bd81ed58c"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.24/scripto-v0.0.24-darwin-amd64.tar.gz"
      sha256 "e2a15af643eac8b50cbc1e1cfa211b3bc9596b005f538cf58ab815f213b670ec"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
