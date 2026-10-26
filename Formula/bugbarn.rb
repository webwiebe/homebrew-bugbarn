class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.285"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.285.tar.gz"
      sha256 "bd6c4d98c9f82d1f8d699c2bfb2ca93a360cfc764224e51ea0a9d0b17f5ed933"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.285.tar.gz"
      sha256 "3310a03bf29bea327eed412aa7421121622bf08c7da1ca898045c850d4fcb1f9"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
