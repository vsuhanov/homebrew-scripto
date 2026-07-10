class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.32/scripto-v0.0.32-darwin-arm64.tar.gz"
      sha256 "a78be8af4d94a44e684657c45b3fc857c7aeb66bb1cb43f5af97350e2fda7034"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.32/scripto-v0.0.32-darwin-amd64.tar.gz"
      sha256 "0d4f042e7839641ac229c1f204a7390eb69040dff025b18e899c781cd59f6d9f"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
