class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.337"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.337.tar.gz"
      sha256 "56deaff91eed608365a648610db2f6d9f05da55e8e31b704a4bcb84e933bcbbf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.337.tar.gz"
      sha256 "5fe23654127803c51d52bdb78c1c65c8ff755f54afa1149b020c2163984abe79"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
