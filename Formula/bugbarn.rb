class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.365"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.365.tar.gz"
      sha256 "01db3b91e613975e2311bb17ab8ba4d3973e7197f2e9219eaca32fa9fa747f4c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.365.tar.gz"
      sha256 "6f656c86f1fd4f38210f0d3ba558d11d9854d2f373c2a9a1ae2039d46da87c2f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
