class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.166"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.166.tar.gz"
      sha256 "bb1845c31913171a0b2268266f66dcbba3b78726115292c85efa03b733c0fd81"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.166.tar.gz"
      sha256 "4f05df42dfbb998f93609f2e58fbb9e4f63cdc3891d51b546212aae7e08dfe40"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
