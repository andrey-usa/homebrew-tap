class Compara < Formula
  desc "Compare two tables (CSV, NDJSON, Parquet) on a composite key: counts, per-column statistics and a self-contained HTML report."
  homepage "https://github.com/andrey-usa/compara"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-apple-darwin.tar.gz"
      sha256 "1b8b3fa3eb0dbe3bf3fd02bf04a4b48b082bfd9e60ebf36fcf6b093c2945c104"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-apple-darwin.tar.gz"
      sha256 "8bb901b3fd23a1e37378e3b7f00c7025faf552bf8e9c1f4845b04a96218eb526"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "893efe7e6b190b02c994700cbfae0bf79929f7ddec1c873eb37c81ddcdb8aaf5"
    end
    on_arm do
      url "https://github.com/andrey-usa/compara/releases/download/v0.5.0/compara-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "73752c7b33f507181478d61a9e392dba4600a82fcfed2138cf142477f05d9951"
    end
  end

  def install
    bin.install "compara"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compara --version")
  end
end
