# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Deemacs < Formula
  desc "Lightweight editor written in c with ncourses mimicing emacs"
  homepage "https://jdees.de"
  url "https://jdees.de/deemacs-0.1.0.tar.xz"
  version "0.1.0"
  sha256 "0f2f508ea5d84ace7e77782dda8d7db23ec3197193f17a73e0a69f572233e49f"

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
