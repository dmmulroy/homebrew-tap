class JjRyu < Formula
  desc "Stacked PRs for Jujutsu with GitHub/GitLab support"
  homepage "https://github.com/dmmulroy/jj-ryu"
  url "https://github.com/dmmulroy/jj-ryu/archive/refs/tags/v0.0.1-alpha.9.tar.gz"
  sha256 "e3f71e1049dea84f92e051d0bc04ac39127ae9663f5bfebd7df77118fdc8fd3e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "ryu", shell_output("#{bin}/ryu --help")
  end
end
