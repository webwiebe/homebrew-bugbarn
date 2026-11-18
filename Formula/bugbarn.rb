class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.381"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.381.tar.gz"
      sha256 "94d323bab0ec7c3cc2d6660acec774410f020e180b78c4b61353a7c83bfa888b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.381.tar.gz"
      sha256 "a69fe6e170ed33ab0729e9448be3dc6dc76000c8a3237b2c77d325f7e311dad4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
