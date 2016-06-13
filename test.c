#include <stdio.h>
#include <locale.h>

//#define LOCALE_DIR "/usr/share/locale"
#define LOCALE_DIR ""
//#define _(string) gettext(string)

int main(int argc, char **argv)
{
	setlocale(LC_ALL, "");
	bindtextdomain("test", LOCALE_DIR);
	bind_textdomain_codeset("test", "UTF-8");
	textdomain("test");
	printf(gettext("Hello world!\n"));
	return 0;
}
