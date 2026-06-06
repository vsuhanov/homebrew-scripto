class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.25/scripto-v0.0.25-darwin-arm64.tar.gz"
      sha256 "87e70432e320b9b871d6afd6d2e1631b7fc09550c6d06a589a7403ba597b472b"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.25/scripto-v0.0.25-darwin-amd64.tar.gz"
      sha256 "fa348c0413a43b0af4e0e82935ddaca0b6abe5ab8eda5cd4dc9864c430056aa4"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
