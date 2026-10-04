class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.196"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.196.tar.gz"
      sha256 "9c6f884151a742659e72dbd8beff2210f869c7a851450d450da83e617838f625"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.196.tar.gz"
      sha256 "f86666161ae437d983e97d954188ed7f7b41a8ea8cc03efa296a7a27239500b4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
