# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Deemacs < Formula
  desc "Lightweight editor written in c with ncourses mimicing emacs"
  homepage "https://jdees.de"
  url "https://github.com/jdees/deemacs/archive/refs/tags/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "7d7527f071abbb211477c46afce41e18afc15b757a36e47448702858e2663595"

  # depends_on "cmake" => :build
#  depends_on :ncurses

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make"
    bin.install "deemacs"
  end
end
