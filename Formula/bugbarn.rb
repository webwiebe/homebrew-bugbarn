class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.396"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.396.tar.gz"
      sha256 "866d50b68be999689ebee46bd1b27439c1b70bf1d146953f05360c2e5c82d9ce"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.396.tar.gz"
      sha256 "8cf7a4f2ae57a2556ccc6d210e3bcdccd2b15ee04ccb980f92be9e684774360e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
