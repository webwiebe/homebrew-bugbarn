class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.180"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.180.tar.gz"
      sha256 "91b3247cc7236c5e9d6ea781cbd2e9a5af083b9817ae280d7a05a6547ca5b644"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.180.tar.gz"
      sha256 "7fa406c88fcef43b6b9f22337597490e57a15cf5851de049a2f3ae7f7c81131a"
    end
  end

  def install
    bin.install "bb"
  end
end
