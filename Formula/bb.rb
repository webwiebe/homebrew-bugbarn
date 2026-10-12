class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.222"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.222.tar.gz"
      sha256 "0c9788b29d32e6c5ef7313d260ee226a9c3f13627770f6d24589ab411472acdb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.222.tar.gz"
      sha256 "2246ddd676cd9cb35874b970fea37631ed2d4d767d86eb86e32bbaa1e860e600"
    end
  end

  def install
    bin.install "bb"
  end
end
