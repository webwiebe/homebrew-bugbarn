class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.4.10.tar.gz"
      sha256 "95c96a18f5311f24a7b790b52624f3dd2f02a92acfd2a3972dedf02d7489033c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.4.10.tar.gz"
      sha256 "c6132b4c1775c49dd380b006be16a01fafe6cd177d7e57cccbb11ba19aa501bc"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
