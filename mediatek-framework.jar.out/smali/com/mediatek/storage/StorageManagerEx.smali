.class public Lcom/mediatek/storage/StorageManagerEx;
.super Ljava/lang/Object;
.source "StorageManagerEx.java"

# interfaces
.implements Lcom/mediatek/common/storage/IStorageManagerEx;


# static fields
.field private static final PROP_DEVICE_TABLET:Ljava/lang/String; = "tablet"

.field private static final PROP_DEVICE_TYPE:Ljava/lang/String; = "ro.build.characteristics"

.field private static final PROP_SD_DEFAULT_PATH:Ljava/lang/String; = "persist.sys.sd.defaultpath"

.field private static final PROP_SD_EXTERNAL_PATH:Ljava/lang/String; = "external_sd_path"

.field private static final PROP_SD_INTERNAL_PATH:Ljava/lang/String; = "internal_sd_path"

.field private static final PROP_SD_SWAP:Ljava/lang/String; = "vold_swap_state"

.field private static final PROP_SD_SWAP_FALSE:Ljava/lang/String; = "0"

.field private static final PROP_SD_SWAP_TRUE:Ljava/lang/String; = "1"

.field private static final STORAGE_PATH_EMULATED:Ljava/lang/String; = "/storage/emulated/"

.field private static final STORAGE_PATH_SD1:Ljava/lang/String; = "/storage/sdcard0"

.field private static final STORAGE_PATH_SD1_ICS:Ljava/lang/String; = "/mnt/sdcard"

.field private static final STORAGE_PATH_SD2:Ljava/lang/String; = "/storage/sdcard1"

.field private static final STORAGE_PATH_SD2_ICS:Ljava/lang/String; = "/mnt/sdcard2"

.field private static final TAG:Ljava/lang/String; = "StorageManagerEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 92
    const-string v2, "/storage/sdcard0"

    .line 93
    .local v2, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 96
    .local v0, deviceTablet:Z
    :try_start_0
    const-string v4, "persist.sys.sd.defaultpath"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    const-string v4, "StorageManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "StorageManagerEx"

    const-string v5, "getDefaultPath empty! set to default."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v4, "/storage/sdcard0"

    invoke-static {v4}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 106
    const-string v2, "/storage/sdcard0"

    .line 111
    :cond_0
    :try_start_1
    const-string v4, "tablet"

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 116
    :goto_1
    if-eqz v0, :cond_1

    .line 117
    const-string v4, "StorageManagerEx"

    const-string v5, "device = Tablet"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v4, "/storage/emulated/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 120
    .local v3, userId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/storage/emulated/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v4, "StorageManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deviceTablet: userId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " path= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v3           #userId:I
    :cond_1
    const-string v4, "/mnt/sdcard"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    const-string v2, "/storage/sdcard0"

    .line 128
    invoke-static {v2}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    .line 134
    :cond_2
    :goto_2
    const-string v4, "StorageManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultPath path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-object v2

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StorageManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException when get default path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 112
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 113
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StorageManagerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException when get device type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 129
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    const-string v4, "/mnt/sdcard2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    const-string v2, "/storage/sdcard1"

    .line 131
    invoke-static {v2}, Lcom/mediatek/storage/StorageManagerEx;->setDefaultPath(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getExternalCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v2, 0x0

    .line 164
    if-nez p0, :cond_0

    .line 165
    const-string v3, "StorageManagerEx"

    const-string v4, "packageName = null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 202
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const/4 v0, 0x0

    .line 169
    .local v0, externalCacheDir:Ljava/io/File;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    invoke-static {p0}, Landroid/os/Environment;->getExternalStorageAppCacheDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageAndroidDataDir()Ljava/io/File;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    :goto_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 181
    const-string v3, "StorageManagerEx"

    const-string v4, "Unable to create external cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 182
    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0           #externalCacheDir:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v4, "cache"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 188
    .restart local v0       #externalCacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 190
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "Android"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "data"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v5, ".nomedia"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    const-string v3, "StorageManagerEx"

    const-string v4, "Unable to create external cache directory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 197
    goto/16 :goto_0

    .line 201
    :cond_2
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalCacheDir path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v3

    goto :goto_2

    .line 177
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 213
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v2, "external_sd_path"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStoragePath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStoragePath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when getExternalStoragePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInternalStoragePath()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v2, "internal_sd_path"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternalStoragePath from Property path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    const-string v2, "/storage/sdcard0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v2, v5, :cond_1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    :cond_0
    :goto_1
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInternalStoragePath path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when getInternalStoragePath:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getInternalStoragePathForLogger()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, path:Ljava/lang/String;
    const-string v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternalStoragePathForLogger raw path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v0, :cond_0

    const-string v1, "/storage/emulated/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    const-string v0, "/storage/emulated/0"

    .line 278
    :cond_0
    const-string v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInternalStoragePathForLogger path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v0
.end method

.method public static getSdSwapState()Z
    .locals 5

    .prologue
    .line 252
    const-string v1, "0"

    .line 255
    .local v1, sdSwap:Ljava/lang/String;
    :try_start_0
    const-string v2, "vold_swap_state"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 259
    :goto_0
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSdSwapState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "StorageManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException when get sdExist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDefaultPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 145
    const-string v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultPath path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-nez p0, :cond_0

    .line 147
    const-string v1, "StorageManagerEx"

    const-string v2, "setDefaultPath error! path=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    const-string v1, "persist.sys.sd.defaultpath"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "StorageManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException when set default path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
