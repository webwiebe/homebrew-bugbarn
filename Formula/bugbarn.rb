class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.152"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.152.tar.gz"
      sha256 "942d805a34156f845d632a0baf6b651c34809cb54bed7f21ad6994b6cbbfaccd"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.152.tar.gz"
      sha256 "af54b9c0ce4f172cb52d5bb91d32efeab764b0043da7bdbc7cc17913a910d48b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
