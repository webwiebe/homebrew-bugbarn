class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.233"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.233.tar.gz"
      sha256 "7483e24f02877b928c4cbf97d9516e35955b1abdb4be9fa4bc88ced461b7727c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.233.tar.gz"
      sha256 "ada5b110bd7a6f1ab6c5f05580fec14af612725eb7397d02b174fcc0963562e3"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
