class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.341"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.341.tar.gz"
      sha256 "c1873c47abd27519ddf0ef1d458a6f5217fefa0515798eabdca9f1efac30c472"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.341.tar.gz"
      sha256 "868dfc706bebe6ffe650e749053a670faa01d75eb1889ec857e08ba9680ac64e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
