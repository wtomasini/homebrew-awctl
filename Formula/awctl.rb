class Awctl < Formula
  desc "Authwise cli utility to manage objects in your tenant"
  homepage "https://authwise.com"
  url "https://github.com/wtomasini/homebrew-awctl/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "8e23fa3695a650b62b7d6422dd1df1b34167e40e82c852fe1ec448a73827749b"
  license "MIT"

  def install
    pl = RUBY_PLATFORM
    if pl.include?("arm64")
      puts "awctl: detected MacOS (arm64)"
      bin.install "awctl-darwin-amd64/awctl"
    elsif pl.include?("darwin")
      puts "awctl: detected MacOS (amd64)"
      bin.install "awctl-darwin-arm64/awctl"
    elsif pl.include?("x86_64-linux")
      puts "awctl: detected Linux (amd64)"
      bin.install "awctl-linux-amd64/awctl"
    else
      puts "awctl: your operating system is not supported or was not detected"
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
end
