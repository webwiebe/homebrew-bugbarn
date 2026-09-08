class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.178"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.178.tar.gz"
      sha256 "be437351538b439e13f6036f617c43181fe56a3ddab480746d42c471aecab460"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.178.tar.gz"
      sha256 "b31bd74a9a636a4568c12bd2c910ec9b2ff6efc2bd944bb49d9c0edae93109b4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
