class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.36/scripto-v0.0.36-darwin-arm64.tar.gz"
      sha256 "8ec4553a1370258142ff132b6e5c4768ca526c55ae303f31e5baf73fbe01f012"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.36/scripto-v0.0.36-darwin-amd64.tar.gz"
      sha256 "f84d08257231594b2193725b26af77e059bcba616db4f64cec74ad46c3638490"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
