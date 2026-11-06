class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.329"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.329.tar.gz"
      sha256 "4cc9f0ee7b0d125195dd1222ceacc38c269bec4b3ccdc9a35efcbe9f045f860f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.329.tar.gz"
      sha256 "198f86e4a0c920bac836ed943802b7964dfce6385a0a62b996842c6e67656cea"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
