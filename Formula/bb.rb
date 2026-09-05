class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.174"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.174.tar.gz"
      sha256 "8b722b865224e6fceec4e4627e1aa574a84297b9bf3b44aba19e9579bf366e7d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.174.tar.gz"
      sha256 "501ecd62323be3be29670dd45677cf5ba41a36f1808ea8b57da2435ede4f203d"
    end
  end

  def install
    bin.install "bb"
  end
end
