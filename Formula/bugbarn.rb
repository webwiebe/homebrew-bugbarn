class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.137"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.137.tar.gz"
      sha256 "def89c4dcfb28315ac9a435d68efa620c520db8718819abda0d5addaae984b79"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.137.tar.gz"
      sha256 "cf487e69a594fd16b87e8899c327334385051e061eaa9729f1794959b08d73ee"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
