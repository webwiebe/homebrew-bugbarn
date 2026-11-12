class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.361"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.361.tar.gz"
      sha256 "0713a7dd87f9d05cd647b0f84331a9bb465c003857134e7256b5833b932db2eb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.361.tar.gz"
      sha256 "892a44d7f2534585441fd96fdc1ed9dbb913f55527a079a07101d1311dea1858"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
