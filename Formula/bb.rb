class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.365"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.365.tar.gz"
      sha256 "4436fb7c214f4ae14638cf210215f63525ded15a482a0b444a1bca952e274a83"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.365.tar.gz"
      sha256 "d27f882a38e52a031ab8d6bd7a0d605cca8b082dde196c02d56df984beddf4f5"
    end
  end

  def install
    bin.install "bb"
  end
end
