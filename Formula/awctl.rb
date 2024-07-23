class Awctl < Formula
  desc "Authwise cli utility to manage objects in your tenant"
  homepage "https://authwise.com"
  url "https://github.com/wtomasini/homebrew-awctl/releases/download/v0.0.1-2/homebrew-awctl-0.0.1.tar.gz"
  # sha256 "c1e2bc9d8e7acfaf428a266ceb0a593903aad696d80eb62207f3cfc1fa80f9f7" for linux
  sha256 "15b02f8bcfabb76a6966d499b5ab9c160dc5c2c98a14662dd8480478effe0868"
  license "MIT"

  def install
    bin.install "awctl-mac"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test awctl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
