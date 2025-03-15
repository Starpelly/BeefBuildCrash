using System;

using RaylibBeef;

namespace BeefAndroid;

class Program
{
	private static Color whiteColor = Color(255, 255, 255, 255);

	[Export, LinkName("Pelly_BugHere")]
	public static void Pelly_TestGame()
	{
		Raylib.DrawRectangle(0, 0, 32, 32, whiteColor); // <- Comment this line and the compiler doesn't crash...
	}
}