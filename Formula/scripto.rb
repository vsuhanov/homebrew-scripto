class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.31/scripto-v0.0.31-darwin-arm64.tar.gz"
      sha256 "32fc63e554d85ee823a61149df40670ede554125e8e407dc54d4ccd78484cf4a"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.31/scripto-v0.0.31-darwin-amd64.tar.gz"
      sha256 "f5fce251c2355078b949b6c7503235bab9ba13c6ad0e2f2ee86cb820909c8f44"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
