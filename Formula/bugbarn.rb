class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.255"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.255.tar.gz"
      sha256 "ef65915750a98eafea141b53261b8035b8730bf1c89a4429b6739594623e263a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.255.tar.gz"
      sha256 "da29e89556b66de9e588aead06137a19cd334a9f1ff01c123818363b0ec75a50"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
