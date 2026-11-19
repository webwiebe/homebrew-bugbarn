class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.387"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.387.tar.gz"
      sha256 "cc7ba23a3df69aeab5a41dcd46d43e27301ad0e88797ad7ba65bb4eb964e53ff"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.387.tar.gz"
      sha256 "e07206e36da8a8775d941744a4c82e1fab4879657d3c67ca4de164df16082a4f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
