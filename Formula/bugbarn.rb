class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.309"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.309.tar.gz"
      sha256 "42250fee1772936936ff1ed65acf9c351be5ee22491183cee0eab5fc39962141"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.309.tar.gz"
      sha256 "8354145ae4296a816ca7962790f35d45fb8c92486df7ced846a5c300ad5a9d43"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
