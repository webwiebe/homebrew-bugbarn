class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.185"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.185.tar.gz"
      sha256 "d9a8efecf8056abd078070537a1f5d51f75abd074c318a67c5b03570beea6da0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.185.tar.gz"
      sha256 "9ef2cfb5664bd5cac74b07fbf8db761e930ccf106d0561df8ac3a3858b39b097"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
