#import "Macros.h"

/*************************************************************************
    هذا هو الكود المعدل الخاص بك لتفعيل Aim Neck
*************************************************************************/

void setup() {
    // تفعيل الكود عند العنوان 8220
    patchOffset(ENCRYPTDFOFFSET("0x8220"), ENCRYPTHEX("60018052C0035FD6"));
}

// إعدادات القائمة (Menu) لكي تظهر داخل اللعبة
void setupMenu() {
    [switches addSwitch:NSSENCRYPT("Aim Neck")
        description:NSSENCRYPT("تفعيل تثبيت الأيم على الرقبة تلقائياً")
    ];
}

// كود الربط البرمجي - لا تغير شيئاً هنا
__attribute__((constructor))
static void init() {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 5 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        setup();
    });
}
