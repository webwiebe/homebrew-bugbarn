class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.350"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.350.tar.gz"
      sha256 "53107beeded22465a3a71e119c1b64a5ed73a6d5daa0e4bb9e34d3f203392ea5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.350.tar.gz"
      sha256 "56d76b973d2d0cd815f4ccf14c18bde7d47c64efb9e97d879db3fc39ed19fb73"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
