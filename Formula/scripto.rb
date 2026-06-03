class Scripto < Formula
  desc "CLI for managing and executing custom scripts with interactive TUI"
  homepage "https://github.com/vsuhanov/scripto"
  version "0.0.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.22/scripto-v0.0.22-darwin-arm64.tar.gz"
      sha256 "37b58c107cbc218844ab02ffc7edeffc20d146df93e27efadb171ccaf7937767"
    end
    on_intel do
      url "https://github.com/vsuhanov/scripto/releases/download/v0.0.22/scripto-v0.0.22-darwin-amd64.tar.gz"
      sha256 "de2123f3d56734ed716b2141e285a499b46795fe8ad3ca943bfd541ffa133f11"
    end
  end

  def install
    bin.install "scripto"
  end

  test do
    system "#{bin}/scripto", "--version"
  end
end
