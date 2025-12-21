class JjStarship < Formula
  desc "Unified Starship prompt module for Git and Jujutsu repositories"
  homepage "https://github.com/dmmulroy/jj-starship"
  url "https://github.com/dmmulroy/jj-starship/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "df7cf9bfe886dea7fc3408023d2c69b170dbe396c1cf8ff12976b61016312b09"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "jj-starship", shell_output("#{bin}/jj-starship --help")
  end
end
