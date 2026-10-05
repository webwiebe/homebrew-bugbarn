class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.204"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.204.tar.gz"
      sha256 "1ca7d6a8ac6a147285b14bd714001ade87ab2bf52acb6217f66653372329b5ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.204.tar.gz"
      sha256 "0f6a73886c6dd6cd10341090472e7ae284e52cc370fc5af3e40d9ecaa2336cae"
    end
  end

  def install
    bin.install "bb"
  end
end
