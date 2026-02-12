# بناء نسخ النشر (AAB و IPA / TestFlight)

## 1. نسخة AAB لجوجل بلاي (Android)

### المتطلبات
- **مفاتيح التوقيع:** بناء الـ release يحتاج ملف `key.properties` بمفاتيح Scorpion.  
  لو غير متوفر، راجع قسم "بدون مفاتيح" أدناه.

### مع مفاتيح التوقيع (الطريقة الصحيحة)
1. أنشئ ملف `android/key.properties` (انظر `key.properties.example`).
2. ضع ملف الـ keystore من Scorpion في مجلد `android/`.
3. من جذر المشروع نفّذ:
   ```bash
   flutter build appbundle
   ```
4. الملف الناتج يكون في:
   ```
   build/app/outputs/bundle/release/app-release.aab
   ```
5. أرسل ملف **app-release.aab** للعميل (أو ارفعه في Google Play Console).

### بدون مفاتيح (مؤقت للمعاينة فقط)
لو العميل يريد معاينة فقط ولم يرسل المفاتيح بعد:
1. في `android/app/build.gradle` غيّر مؤقتاً:
   ```gradle
   signingConfig signingConfigs.debug
   ```
2. نفّذ:
   ```bash
   flutter build appbundle
   ```
3. أرسل الـ AAB الناتج للمعاينة، واذكري أن النسخة النهائية ستُوقَّع بمفاتيح Scorpion عند توفرها.

---

## 2. نسخة IPA / TestFlight (iOS)

### المتطلبات
- **جهاز Mac** مع تثبيت Xcode.
- **حساب Apple Developer** (مدفوع).
- المشروع مفتوح في Xcode مرة واحدة على الأقل لإعداد التوقيع.

### الخطوات من الطرفية (Flutter)
1. على الماك، من مجلد المشروع:
   ```bash
   flutter build ipa
   ```
2. الملف الناتج غالباً في:
   ```
   build/ios/ipa/
   ```
   أو استخدم الأرشفة من Xcode (الخطوات التالية).

### رفع على TestFlight من Xcode
1. افتح المشروع على الماك:
   ```bash
   open ios/Runner.xcworkspace
   ```
2. من القائمة: **Product** → **Archive**.
3. بعد انتهاء الأرشفة: من **Organizer** اختر الأرشفة ثم **Distribute App**.
4. اختر **App Store Connect** ثم **Upload**.
5. بعد الرفع، من [App Store Connect](https://appstoreconnect.apple.com) ادخلي على التطبيق → **TestFlight** واختاري المبنى الجديد للمعاينة.

### لو ما عندكيش Mac
- البناء والرفع لـ iOS يحتاج Mac.  
- الخيارات: استخدام Mac خاص، أو خدمة سحابية (مثل Codemagic / GitHub Actions على runner بنظام macOS)، أو أن يبني العميل أو طرف ثالث يملك Mac و حساب المطور.

---

## ملخص للمعمولة

| الملف المطلوب | الأمر (مع مفاتيح صحيحة) | مكان الملف الناتج |
|---------------|-------------------------|---------------------|
| **AAB** (جوجل بلاي) | `flutter build appbundle` | `build/app/outputs/bundle/release/app-release.aab` |
| **IPA** (iOS) | `flutter build ipa` (على Mac) | `build/ios/ipa/` أو عبر Xcode Archive |

بعد تجهيز **app-release.aab** و/أو رفع البناء على **TestFlight**، يمكنك تزويد العميل برابط TestFlight وملف الـ AAB للمعاينة النهائية.
