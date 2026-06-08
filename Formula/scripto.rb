class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.28/scripto-v0.0.28-darwin-arm64.tar.gz"
      sha256 "568a00a34aa3f81b8f1880d9533d5e43a770299278f43e1c8710a24af9db7104"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.28/scripto-v0.0.28-darwin-amd64.tar.gz"
      sha256 "5aad3cf42cc1d05411a2cfba29b5d65654f65833e8a592faa07f3e15c7a69f0f"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
