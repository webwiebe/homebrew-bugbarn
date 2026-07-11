class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.132"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.132.tar.gz"
      sha256 "8fb296822e6d49b7496adce749c98628b93eac6b7b9d29d4f3afd0e378f929fe"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.132.tar.gz"
      sha256 "69e6b0058c1d2bb460d76d9890e46e941fd72479beb29287d23c96b9f3b5d629"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
