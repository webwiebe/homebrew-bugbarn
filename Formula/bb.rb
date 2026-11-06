class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.337"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.337.tar.gz"
      sha256 "82724a57e05fdee3188ee0ddf6647a17dfc60c9937ebf81b33d8790f7e34f851"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.337.tar.gz"
      sha256 "202e50dae2136baa3366755df588734ad9d2643dea3fa2eee25d51b104f00ae4"
    end
  end

  def install
    bin.install "bb"
  end
end
