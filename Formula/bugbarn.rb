class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.287"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.287.tar.gz"
      sha256 "9316e835297352cdaf1ee0d6c23f7d288d2f81ddf87f6206d73f61d2fbcb8a69"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.287.tar.gz"
      sha256 "9cdaff53b6cde52d301eec130d9d9797c5f48daa51f3e9757d260320f286bafc"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
