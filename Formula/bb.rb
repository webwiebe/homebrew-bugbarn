class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.77.tar.gz"
      sha256 "fdf7301d7c6055d05eb6f1d606cbeaf67f8cd0dc45aeeec8d75762fb73dac6ea"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.77.tar.gz"
      sha256 "953465b2983de2a305ca6ac9237e5320a39ec53cd9c8ce7fb3d051c677e4404d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
