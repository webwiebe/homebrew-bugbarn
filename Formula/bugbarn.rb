class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.269"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.269.tar.gz"
      sha256 "eb92abe559a92d37351dcd333343cf5c30e66ae2c1015b9a8410c9704dbc6980"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.269.tar.gz"
      sha256 "7f5c5d4ab51c22fb2adcdf242b1c2b702bdf37e13a93195d924bd2856b596edf"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
