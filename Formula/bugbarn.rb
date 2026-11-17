class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.375"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.375.tar.gz"
      sha256 "561b98b1460081db84fa6a08fe7f3b767c54554990e0e6398e2c623867edabc0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.375.tar.gz"
      sha256 "06241ba728d506a73bb3366702a704ade0c5ed2983c3a2228932e76104851d93"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
