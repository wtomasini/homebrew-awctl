class Awctl < Formula
  desc "Authwise cli utility to manage objects in your tenant"
  homepage "https://authwise.com"
  url "https://github.com/wtomasini/homebrew-awctl/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "8da2d1cfe1d300721d25c8121e91cebd04e94b5b2da8a4501bfc991c5677176e"
  license "MIT"

  def install
    bin.install "awctl"
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
