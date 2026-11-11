class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.354"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.354.tar.gz"
      sha256 "acd3c382ddb495d6e34904129b4644e1c5bdd455e41a86637661432b6d0edebb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.354.tar.gz"
      sha256 "b13528e10700607e6915bb99f38479c15f62d5ae105608852ec211f6353da840"
    end
  end

  def install
    bin.install "bb"
  end
end
