#include <3ds.h>
#include <stdio.h>

int main() {
    gfxInitDefault();
    consoleInit(GFX_TOP, NULL);

    printf("BR PATCH STORE 3DS\n");
    printf("Funcionando!\n");

    while (aptMainLoop()) {
        hidScanInput();
        if (hidKeysDown() & KEY_START) break;

        gspWaitForVBlank();
        gfxFlushBuffers();
        gfxSwapBuffers();
    }

    gfxExit();
    return 0;
}
