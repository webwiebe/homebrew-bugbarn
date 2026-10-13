class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.235"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.235.tar.gz"
      sha256 "30a172eb7308dc05753ae56c20a9042ba498046f3ae9ce03302db73f92c33f61"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.235.tar.gz"
      sha256 "28702f092852de41ed71da8274e92ea7e96f628bcadcb5b372adf87b10dcc3ea"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
