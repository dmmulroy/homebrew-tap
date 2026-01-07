class JjRyu < Formula
  desc "Stacked PRs for Jujutsu with GitHub/GitLab support"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.8.tar.gz"
  sha256 "4384a12605327867dc71bdb36f01d86e5e72fd134d8c7c398fed362d926837b9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ryu", shell_output("#{bin}/ryu --help")
  end
end
