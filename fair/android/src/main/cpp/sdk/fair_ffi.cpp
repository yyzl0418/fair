
#include <mxflutter_ffi.h>
#include <mxflutter_app.h>
#include <jni.h>
#include <android/log.h>
#include <jni_helper.h>

/// 同步属性回调
extern "C" JNIEXPORT __attribute__((used))
const char *syncPropsCallback(char *args) {
  if (get_mx_flutter_ffi() != nullptr) {
    int attach = 0;
    JNIEnv *env = get_env(&attach);
    jclass clazz_mxflutter_app = env->GetObjectClass(get_mx_flutter_ffi());
    jmethodID method_syncPropsCallback = env->GetMethodID(clazz_mxflutter_app,
                                                          "syncPropsCallback",
                                                          "(Ljava/lang/String;)Ljava/lang/String;");
    auto result = (jstring)env->CallObjectMethod(get_mx_flutter_ffi(),
                        method_syncPropsCallback,
                        env->NewStringUTF(args));
    const char *resultString = env->GetStringUTFChars(result, nullptr);
    if (attach == 1) {
      del_env();
    }
    return resultString;
  }
  return "Fair为空";
}

