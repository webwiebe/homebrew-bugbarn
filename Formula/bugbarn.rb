class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.228"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.228.tar.gz"
      sha256 "6b642cd0b1c3ed0d5100c6fe05165de1a23e9bac0ec77bbf24188fb825daa752"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.228.tar.gz"
      sha256 "c77bbcd48bf42697bd8942286c54e6529ba0f62343d84c7bae768c1bfa03ebb4"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
