class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.354"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.354.tar.gz"
      sha256 "7bfcd6bcc5c57e2f022cecb429159553b3ea253177e6e34f04c6a1e8c07c1e57"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.354.tar.gz"
      sha256 "8c6e8845f77b561c7a8fa5724d904360d362fc65b482e499b57ab1227d1f698f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
