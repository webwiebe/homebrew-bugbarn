class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.397"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.397.tar.gz"
      sha256 "855ad78dd6fb88d17a5b01ebe3dd79459230bc3684eacbdf31e5628b5ea00e53"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.397.tar.gz"
      sha256 "a62f544b44bc62bc8af157e32e958191747de7956e5bde28ac96570ef74a793f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
