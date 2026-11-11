class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.347"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.347.tar.gz"
      sha256 "ec63ab2b861fb0ee5107960df501245d35de14f301932f0c67dfdb8397d830d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.347.tar.gz"
      sha256 "6ede0a92db9e74bf1e604047e5a668d64273a8d92fa8bc3c71e6c499652fbbee"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
