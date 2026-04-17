//
//  ContentView.swift
//  hello Xcode
//
//  Created by AHMED ABDELBAKY on 17/04/2026.
//

import SwiftUI // استدعاء أدوات تصميم واجهات أبل

struct ContentView: View { // تعريف هيكل الصفحة الرئيسية
    var body: some View { // المكان اللي بنحط فيه كل عناصر الواجهة
        ZStack { // حاوية لترتيب العناصر فوق بعضها (الخلفية أولاً ثم المحتوى)
            
            // تصميم تدرج لوني للخلفية
            LinearGradient(
                colors: [Color.red, Color.blue.opacity(0.8), Color.green], // مصفوفة الألوان المستخدمة
                startPoint: .topLeading, // بداية التدرج من أعلى اليسار
                endPoint: .bottomTrailing // نهاية التدرج أسفل اليمين
            )
            .ignoresSafeArea() // جعل التدرج يملأ الشاشة بالكامل خلف الساعة والنوتش
        
            VStack { // حاوية لترتيب العناصر عمودياً (تحت بعضها)
                Image(systemName: "globe") // عرض أيقونة الكرة الأرضية من نظام أبل
                    .imageScale(.large) // تكبير حجم الأيقونة
                    .foregroundStyle(.red) // تلوين الأيقونة باللون الأحمر
                    
                Text("Hello, world!") // نص ترحيبي أول
                    .font(.largeTitle) // حجم خط كبير
                    .fontWeight(.bold) // جعل الخط عريضاً
                
                Text("Welcome a Developer Ios") // نص ترحيبي ثاني
                    .font(.system(size: 40)) // تحديد حجم الخط بدقة (40 نقطة)
                    .bold() // جعل الخط عريض (الأفضل كتابتها قبل الـ padding)
                    .padding(20) // إضافة مسافة 20 نقطة حول النص
                    .background(Color.blue.opacity(0.9)) // إضافة خلفية زرقاء للنص بشفافية بسيطة
                
                Text("please feel free to ask question' send request via the course !") // نص تعليمات
                    .font(.largeTitle) // حجم خط كبير
                    .fontWeight(.thin) // جعل الخط رفيعاً جداً
                    .multilineTextAlignment(.center) // توسيط النص إذا كتب على أكثر من سطر
                
                Image(.moon) // عرض صورة القمر (لازم تكون مضافة في الـ Assets)
                    .resizable() // السماح بتغيير حجم الصورة لتناسب الإطار
                    .frame(width: 200, height: 200) // تحديد طول وعرض الصورة (200x200)
                    .padding(20) // إضافة مسافة حول الصورة
                    .multilineTextAlignment(.center) // (تأثيرها ضعيف هنا لأنها صورة وليست نص)
            }
            .padding() // إضافة مسافة أمان حول الـ VStack كلها
        }
    }
}

#Preview { // لعرض شكل التصميم فوراً في Xcode بدون تشغيل محاكي
    ContentView() // استدعاء الصفحة لعرضها
}
