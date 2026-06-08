class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.29/scripto-v0.0.29-darwin-arm64.tar.gz"
      sha256 "6a3a813c70b3280b6344c284f53b2011a51a9ca676b20ac4b91f710687b154bb"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.29/scripto-v0.0.29-darwin-amd64.tar.gz"
      sha256 "be727cf714357c807f0d8a5733108f172c550cd2bbd5fb756be0bba03aacbf26"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
