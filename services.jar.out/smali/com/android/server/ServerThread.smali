.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

#the value of this static final field might be set in the static constructor
.field private static final IS_USER_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field static mMTPROF_disable:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .parameter "bootevent"

    .prologue
    .line 140
    :try_start_0
    sget-boolean v2, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 141
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 142
    .local v1, fbp:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 143
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 144
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v1           #fbp:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 148
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 1331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1332
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1335
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1336
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 133
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    return-void
.end method

.method public run()V
    .locals 166

    .prologue
    .line 156
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {v7, v11, v12}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 159
    const-string v7, "1"

    const-string v9, "ro.mtprof.disable"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/ServerThread;->mMTPROF_disable:Z

    .line 160
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_START"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 164
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 167
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 168
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 172
    const-string v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v134

    .line 174
    .local v134, shutdownAction:Ljava/lang/String;
    if-eqz v134, :cond_0

    invoke-virtual/range {v134 .. v134}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 175
    const/4 v7, 0x0

    move-object/from16 v0, v134

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_13

    const/16 v126, 0x1

    .line 178
    .local v126, reboot:Z
    :goto_0
    invoke-virtual/range {v134 .. v134}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_14

    .line 179
    const/4 v7, 0x1

    invoke-virtual/range {v134 .. v134}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v134

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v125

    .line 184
    .local v125, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v126

    move-object/from16 v1, v125

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 188
    .end local v125           #reason:Ljava/lang/String;
    .end local v126           #reboot:Z
    :cond_0
    const-string v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v95

    .line 189
    .local v95, factoryTestStr:Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v95

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v94, 0x0

    .line 191
    .local v94, factoryTest:I
    :goto_2
    const-string v7, "1"

    const-string v9, "ro.config.headless"

    const-string v11, "0"

    invoke-static {v9, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    .line 193
    .local v34, headless:Z
    const/16 v101, 0x0

    .line 194
    .local v101, installer:Lcom/android/server/pm/Installer;
    const/16 v68, 0x0

    .line 195
    .local v68, accountManager:Landroid/accounts/AccountManagerService;
    const/16 v82, 0x0

    .line 196
    .local v82, contentService:Landroid/content/ContentService;
    const/16 v103, 0x0

    .line 197
    .local v103, lights:Lcom/android/server/LightsService;
    const/16 v124, 0x0

    .line 198
    .local v124, power:Lcom/android/server/power/PowerManagerService;
    const/16 v88, 0x0

    .line 199
    .local v88, display:Lcom/android/server/display/DisplayManagerService;
    const/16 v74, 0x0

    .line 200
    .local v74, battery:Lcom/android/server/BatteryService;
    const/16 v129, 0x0

    .line 201
    .local v129, sdioAutoK:Lcom/android/server/SDIOAutoKService;
    const/16 v155, 0x0

    .line 202
    .local v155, vibrator:Lcom/android/server/VibratorService;
    const/16 v71, 0x0

    .line 203
    .local v71, alarm:Lcom/android/server/AlarmManagerService;
    const/16 v110, 0x0

    .line 204
    .local v110, mountService:Lcom/android/server/MountService;
    const/16 v30, 0x0

    .line 205
    .local v30, networkManagement:Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 206
    .local v29, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v113, 0x0

    .line 207
    .local v113, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v80, 0x0

    .line 208
    .local v80, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v162, 0x0

    .line 209
    .local v162, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v160, 0x0

    .line 210
    .local v160, wifi:Lcom/android/server/WifiService;
    const/16 v133, 0x0

    .line 211
    .local v133, serviceDiscovery:Lcom/android/server/NsdService;
    const/16 v123, 0x0

    .line 212
    .local v123, pm:Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 213
    .local v5, context:Landroid/content/Context;
    const/16 v164, 0x0

    .line 214
    .local v164, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v75, 0x0

    .line 216
    .local v75, bluetooth:Lcom/android/server/BluetoothManagerService;
    const/16 v66, 0x0

    .line 217
    .local v66, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    const/16 v89, 0x0

    .line 218
    .local v89, dock:Lcom/android/server/DockObserver;
    const/16 v153, 0x0

    .line 219
    .local v153, usb:Lcom/android/server/usb/UsbService;
    const/16 v131, 0x0

    .line 220
    .local v131, serial:Lcom/android/server/SerialService;
    const/16 v148, 0x0

    .line 221
    .local v148, twilight:Lcom/android/server/TwilightService;
    const/16 v151, 0x0

    .line 222
    .local v151, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v127, 0x0

    .line 223
    .local v127, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v144, 0x0

    .line 224
    .local v144, throttle:Lcom/android/server/ThrottleService;
    const/16 v115, 0x0

    .line 225
    .local v115, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v77, 0x0

    .line 226
    .local v77, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    const/16 v100, 0x0

    .line 227
    .local v100, inputManager:Lcom/android/server/input/InputManagerService;
    const/16 v137, 0x0

    .line 229
    .local v137, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    const/16 v139, 0x0

    .line 230
    .local v139, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    const/16 v141, 0x0

    .line 231
    .local v141, telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    const/16 v142, 0x0

    .line 233
    .local v142, telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    const/16 v97, 0x0

    .line 236
    .local v97, hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    const/16 v109, 0x0

    .line 243
    .local v109, mom:Lcom/mediatek/common/mom/IMobileManagerService;
    new-instance v150, Landroid/os/HandlerThread;

    const-string v7, "UI"

    move-object/from16 v0, v150

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 244
    .local v150, uiHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v150 .. v150}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v20, Landroid/os/Handler;

    invoke-virtual/range {v150 .. v150}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 246
    .local v20, uiHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    new-instance v165, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v165

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 264
    .local v165, wmHandlerThread:Landroid/os/HandlerThread;
    invoke-virtual/range {v165 .. v165}, Landroid/os/HandlerThread;->start()V

    .line 265
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v165 .. v165}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 266
    .local v21, wmHandler:Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    const/16 v24, 0x0

    .line 288
    .local v24, onlyCore:Z
    :try_start_0
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v102, Lcom/android/server/pm/Installer;

    invoke-direct/range {v102 .. v102}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5b

    .line 290
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .local v102, installer:Lcom/android/server/pm/Installer;
    :try_start_1
    invoke-virtual/range {v102 .. v102}, Lcom/android/server/pm/Installer;->ping()Z

    .line 293
    sget-boolean v7, Lcom/android/server/ServerThread;->IS_USER_BUILD:Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v7, :cond_1

    .line 295
    const/16 v112, 0x0

    .line 298
    .local v112, msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :try_start_2
    const-class v7, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;

    move-object/from16 v112, v0

    .line 299
    const-string v7, "SystemServer"

    const-string v9, "Create message monitor service successfully ."

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    :goto_3
    :try_start_3
    const-string v7, "msgmonitorservice"

    invoke-interface/range {v112 .. v112}, Lcom/mediatek/common/msgmonitorservice/IMessageLogger;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 311
    .end local v112           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :cond_1
    :goto_4
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9}, Lcom/android/server/EntropyMixer;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 315
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 317
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v4, Lcom/android/server/power/PowerManagerService;

    invoke-direct {v4}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    .line 319
    .end local v124           #power:Lcom/android/server/power/PowerManagerService;
    .local v4, power:Lcom/android/server/power/PowerManagerService;
    :try_start_5
    const-string v7, "power"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 321
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static/range {v94 .. v94}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v5

    .line 324
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v10, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v10, v5, v0, v1}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5c

    .line 326
    .end local v88           #display:Lcom/android/server/display/DisplayManagerService;
    .local v10, display:Lcom/android/server/display/DisplayManagerService;
    :try_start_6
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v10, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 328
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone1"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v138, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v138

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5d

    .line 330
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .local v138, telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string v7, "telephony.registry"

    move-object/from16 v0, v138

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry Phone2"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    new-instance v140, Lcom/android/server/TelephonyRegistry;

    const/4 v7, 0x1

    move-object/from16 v0, v140

    invoke-direct {v0, v5, v7}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5e

    .line 333
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .local v140, telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :try_start_8
    const-string v7, "telephony.registry2"

    move-object/from16 v0, v140

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 349
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v7, "scheduling_policy"

    new-instance v9, Landroid/os/SchedulingPolicyService;

    invoke-direct {v9}, Landroid/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 353
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 355
    invoke-virtual {v10}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_2

    .line 356
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 360
    :cond_2
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 363
    .local v85, cryptState:Ljava/lang/String;
    const-string v7, "trigger_restart_min_framework"

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 364
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/16 v24, 0x1

    .line 371
    :cond_3
    :goto_5
    if-eqz v94, :cond_17

    const/4 v7, 0x1

    :goto_6
    move-object/from16 v0, v102

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v123

    .line 374
    const/16 v96, 0x0

    .line 376
    .local v96, firstBoot:Z
    :try_start_9
    invoke-interface/range {v123 .. v123}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4

    move-result v96

    .line 380
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 382
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 387
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_4

    .line 391
    :try_start_b
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v69, Landroid/accounts/AccountManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v5}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4

    .line 393
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .local v69, accountManager:Landroid/accounts/AccountManagerService;
    :try_start_c
    const-string v7, "account"

    move-object/from16 v0, v69

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_66
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5f

    move-object/from16 v68, v69

    .line 401
    .end local v69           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    :goto_8
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "MobileManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-class v7, Lcom/mediatek/common/mom/IMobileManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/mom/IMobileManagerService;

    move-object/from16 v109, v0

    .line 403
    const-string v7, "mobile"

    invoke-interface/range {v109 .. v109}, Lcom/mediatek/common/mom/IMobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4

    .line 410
    :goto_9
    :try_start_e
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v7, 0x1

    move/from16 v0, v94

    if-ne v0, v7, :cond_18

    const/4 v7, 0x1

    :goto_a
    invoke-static {v5, v7}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/ContentService;

    move-result-object v82

    .line 414
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 417
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4

    .line 420
    .end local v103           #lights:Lcom/android/server/LightsService;
    .local v6, lights:Lcom/android/server/LightsService;
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_60

    .line 422
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .local v8, battery:Lcom/android/server/BatteryService;
    :try_start_10
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 430
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v156, Lcom/android/server/VibratorService;

    move-object/from16 v0, v156

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_61

    .line 432
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .local v156, vibrator:Lcom/android/server/VibratorService;
    :try_start_11
    const-string v7, "vibrator"

    move-object/from16 v0, v156

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 436
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/display/DisplayManagerService;)V

    .line 439
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v15, Lcom/android/server/AlarmManagerService;

    invoke-direct {v15, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_62

    .line 441
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .local v15, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_12
    const-string v7, "alarm"

    invoke-static {v7, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 443
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v16

    move-object v12, v5

    move-object v13, v8

    move-object v14, v4

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 447
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v19, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_63

    .line 450
    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .local v19, inputManager:Lcom/android/server/input/InputManagerService;
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v7, 0x1

    move/from16 v0, v94

    if-eq v0, v7, :cond_19

    const/16 v22, 0x1

    :goto_b
    if-nez v96, :cond_1a

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v10

    invoke-static/range {v16 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v164

    .line 455
    const-string v7, "window"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 456
    const-string v7, "input"

    move-object/from16 v0, v19

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 458
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v164

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 460
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 461
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/input/InputManagerService;->start()V

    .line 463
    move-object/from16 v0, v164

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 464
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 469
    const-string v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 470
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_6

    :goto_d
    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .line 502
    .end local v85           #cryptState:Ljava/lang/String;
    .end local v96           #firstBoot:Z
    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    :goto_e
    const/16 v86, 0x0

    .line 503
    .local v86, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v135, 0x0

    .line 504
    .local v135, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v98, 0x0

    .line 505
    .local v98, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v72, 0x0

    .line 506
    .local v72, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v117, 0x0

    .line 507
    .local v117, notification:Lcom/android/server/NotificationManagerService;
    const/16 v158, 0x0

    .line 508
    .local v158, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v104, 0x0

    .line 509
    .local v104, location:Lcom/android/server/LocationManagerService;
    const/16 v83, 0x0

    .line 510
    .local v83, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v146, 0x0

    .line 511
    .local v146, tsms:Lcom/android/server/TextServicesManagerService;
    const/16 v106, 0x0

    .line 512
    .local v106, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    const/16 v91, 0x0

    .line 513
    .local v91, dreamy:Lcom/android/server/dreams/DreamManagerService;
    const/16 v143, 0x0

    .line 514
    .local v143, thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    const/16 v119, 0x0

    .line 515
    .local v119, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    const/16 v122, 0x0

    .line 518
    .local v122, perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    const/4 v7, 0x1

    move/from16 v0, v94

    if-eq v0, v7, :cond_4

    .line 520
    :try_start_14
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v99, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v99

    move-object/from16 v1, v164

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_7

    .line 522
    .end local v98           #imm:Lcom/android/server/InputMethodManagerService;
    .local v99, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_15
    const-string v7, "input_method"

    move-object/from16 v0, v99

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5a

    move-object/from16 v98, v99

    .line 528
    .end local v99           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_f
    :try_start_16
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_8

    .line 537
    :cond_4
    :goto_10
    :try_start_17
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_9

    .line 543
    :goto_11
    :try_start_18
    invoke-interface/range {v123 .. v123}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 549
    :goto_12
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x10403e9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_59

    .line 556
    :goto_13
    const/4 v7, 0x1

    move/from16 v0, v94

    if-eq v0, v7, :cond_1e

    .line 557
    const-string v7, "0"

    const-string v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 563
    :try_start_1a
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v111, Lcom/android/server/MountService;

    move-object/from16 v0, v111

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_b

    .line 565
    .end local v110           #mountService:Lcom/android/server/MountService;
    .local v111, mountService:Lcom/android/server/MountService;
    :try_start_1b
    const-string v7, "mount"

    move-object/from16 v0, v111

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_58

    move-object/from16 v110, v111

    .line 572
    .end local v111           #mountService:Lcom/android/server/MountService;
    .restart local v110       #mountService:Lcom/android/server/MountService;
    :cond_5
    :goto_14
    :try_start_1c
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v107, Lcom/android/internal/widget/LockSettingsService;

    move-object/from16 v0, v107

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_c

    .line 574
    .end local v106           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .local v107, lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :try_start_1d
    const-string v7, "lock_settings"

    move-object/from16 v0, v107

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_57

    move-object/from16 v106, v107

    .line 580
    .end local v107           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :goto_15
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v87, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v87

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_d

    .line 582
    .end local v86           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v87, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_1f
    const-string v7, "device_policy"

    move-object/from16 v0, v87

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_56

    move-object/from16 v86, v87

    .line 588
    .end local v87           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v86       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_16
    :try_start_20
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v136, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v136

    move-object/from16 v1, v164

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_e

    .line 590
    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v136, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_21
    const-string v7, "statusbar"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_55

    move-object/from16 v135, v136

    .line 596
    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_17
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_f

    .line 604
    :goto_18
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 606
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 612
    :goto_19
    :try_start_24
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v147, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v147

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 614
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v147, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_25
    const-string v7, "textservices"

    move-object/from16 v0, v147

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_54

    move-object/from16 v146, v147

    .line 620
    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_1a
    :try_start_26
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v114, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v114

    move-object/from16 v1, v30

    invoke-direct {v0, v5, v1, v15}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 622
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v114, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_27
    const-string v7, "netstats"

    move-object/from16 v0, v114

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_53

    move-object/from16 v29, v114

    .line 628
    .end local v114           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_1b
    :try_start_28
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 632
    .end local v113           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_29
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_52

    .line 638
    :goto_1c
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v163, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v163

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_14

    .line 640
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v163, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_2b
    const-string v7, "wifip2p"

    move-object/from16 v0, v163

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_51

    move-object/from16 v162, v163

    .line 646
    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1d
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v161, Lcom/android/server/WifiService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_15

    .line 648
    .end local v160           #wifi:Lcom/android/server/WifiService;
    .local v161, wifi:Lcom/android/server/WifiService;
    :try_start_2d
    const-string v7, "wifi"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_50

    move-object/from16 v160, v161

    .line 654
    .end local v161           #wifi:Lcom/android/server/WifiService;
    .restart local v160       #wifi:Lcom/android/server/WifiService;
    :goto_1e
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v81, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v81

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_16

    .line 657
    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .local v81, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_2f
    const-string v7, "connectivity"

    move-object/from16 v0, v81

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 658
    move-object/from16 v0, v29

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 659
    move-object/from16 v0, v25

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 660
    invoke-virtual/range {v160 .. v160}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 661
    invoke-virtual/range {v162 .. v162}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_4f

    move-object/from16 v80, v81

    .line 667
    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1f
    :try_start_30
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v133

    .line 669
    const-string v7, "servicediscovery"

    move-object/from16 v0, v133

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_17

    .line 676
    :goto_20
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v145, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v145

    invoke-direct {v0, v5}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_18

    .line 678
    .end local v144           #throttle:Lcom/android/server/ThrottleService;
    .local v145, throttle:Lcom/android/server/ThrottleService;
    :try_start_32
    const-string v7, "throttle"

    move-object/from16 v0, v145

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_4e

    move-object/from16 v144, v145

    .line 685
    .end local v145           #throttle:Lcom/android/server/ThrottleService;
    .restart local v144       #throttle:Lcom/android/server/ThrottleService;
    :goto_21
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_19

    .line 697
    :goto_22
    if-eqz v110, :cond_6

    .line 698
    invoke-virtual/range {v110 .. v110}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 702
    :cond_6
    if-eqz v68, :cond_7

    .line 703
    :try_start_34
    invoke-virtual/range {v68 .. v68}, Landroid/accounts/AccountManagerService;->systemReady()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1a

    .line 709
    :cond_7
    :goto_23
    if-eqz v82, :cond_8

    .line 710
    :try_start_35
    invoke-virtual/range {v82 .. v82}, Landroid/content/ContentService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1b

    .line 716
    :cond_8
    :goto_24
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v118, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v118

    move-object/from16 v1, v135

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1c

    .line 718
    .end local v117           #notification:Lcom/android/server/NotificationManagerService;
    .local v118, notification:Lcom/android/server/NotificationManagerService;
    :try_start_37
    const-string v7, "notification"

    move-object/from16 v0, v118

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 719
    move-object/from16 v0, v25

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_4d

    move-object/from16 v117, v118

    .line 725
    .end local v118           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v117       #notification:Lcom/android/server/NotificationManagerService;
    :goto_25
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1d

    .line 733
    :goto_26
    :try_start_39
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v105, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v105

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_1e

    .line 735
    .end local v104           #location:Lcom/android/server/LocationManagerService;
    .local v105, location:Lcom/android/server/LocationManagerService;
    :try_start_3a
    const-string v7, "location"

    move-object/from16 v0, v105

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_4c

    move-object/from16 v104, v105

    .line 741
    .end local v105           #location:Lcom/android/server/LocationManagerService;
    .restart local v104       #location:Lcom/android/server/LocationManagerService;
    :goto_27
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    new-instance v84, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v84

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1f

    .line 743
    .end local v83           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v84, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_3c
    const-string v7, "country_detector"

    move-object/from16 v0, v84

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_4b

    move-object/from16 v83, v84

    .line 749
    .end local v84           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v83       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_28
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v7, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_20

    .line 758
    :goto_29
    :try_start_3e
    const-string v7, "SystemServer"

    const-string v9, "Search Engine Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_22

    .line 759
    const/16 v130, 0x0

    .line 761
    .local v130, searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :try_start_3f
    const-class v7, Lcom/mediatek/common/search/ISearchEngineManagerService;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-object/from16 v130, v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_21
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_22

    .line 767
    :goto_2a
    if-eqz v130, :cond_9

    .line 768
    :try_start_40
    const-string v7, "search_engine"

    invoke-interface/range {v130 .. v130}, Lcom/mediatek/common/search/ISearchEngineManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_22

    .line 777
    .end local v130           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :cond_9
    :goto_2b
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v11, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v11}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_23

    .line 784
    :goto_2c
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111002b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 787
    :try_start_42
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-nez v34, :cond_a

    .line 789
    new-instance v159, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_24

    .line 790
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v159, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_43
    const-string v7, "wallpaper"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_4a

    move-object/from16 v158, v159

    .line 797
    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_a
    :goto_2d
    const-string v7, "0"

    const-string v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 799
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_25

    .line 829
    :cond_b
    :goto_2e
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    new-instance v90, Lcom/android/server/DockObserver;

    move-object/from16 v0, v90

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_26

    .end local v89           #dock:Lcom/android/server/DockObserver;
    .local v90, dock:Lcom/android/server/DockObserver;
    move-object/from16 v89, v90

    .line 837
    .end local v90           #dock:Lcom/android/server/DockObserver;
    .restart local v89       #dock:Lcom/android/server/DockObserver;
    :goto_2f
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v19

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_27

    .line 846
    :goto_30
    :try_start_47
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v154, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v154

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_28

    .line 849
    .end local v153           #usb:Lcom/android/server/usb/UsbService;
    .local v154, usb:Lcom/android/server/usb/UsbService;
    :try_start_48
    const-string v7, "usb"

    move-object/from16 v0, v154

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_49

    move-object/from16 v153, v154

    .line 855
    .end local v154           #usb:Lcom/android/server/usb/UsbService;
    .restart local v153       #usb:Lcom/android/server/usb/UsbService;
    :goto_31
    :try_start_49
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v132, Lcom/android/server/SerialService;

    move-object/from16 v0, v132

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_29

    .line 858
    .end local v131           #serial:Lcom/android/server/SerialService;
    .local v132, serial:Lcom/android/server/SerialService;
    :try_start_4a
    const-string v7, "serial"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_48

    move-object/from16 v131, v132

    .line 864
    .end local v132           #serial:Lcom/android/server/SerialService;
    .restart local v131       #serial:Lcom/android/server/SerialService;
    :goto_32
    :try_start_4b
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    new-instance v149, Lcom/android/server/TwilightService;

    move-object/from16 v0, v149

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2a

    .end local v148           #twilight:Lcom/android/server/TwilightService;
    .local v149, twilight:Lcom/android/server/TwilightService;
    move-object/from16 v148, v149

    .line 871
    .end local v149           #twilight:Lcom/android/server/TwilightService;
    .restart local v148       #twilight:Lcom/android/server/TwilightService;
    :goto_33
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    new-instance v152, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v152

    move-object/from16 v1, v148

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2b

    .end local v151           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v152, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v151, v152

    .line 879
    .end local v152           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v151       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_34
    :try_start_4d
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_2c

    .line 887
    :goto_35
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    new-instance v73, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_2d

    .line 889
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .local v73, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_4f
    const-string v7, "appwidget"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_47

    move-object/from16 v72, v73

    .line 895
    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_36
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v128, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_2e

    .end local v127           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v128, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v127, v128

    .line 905
    .end local v128           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v127       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_37
    const/16 v70, 0x0

    .line 907
    .local v70, agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :try_start_51
    const-class v7, Lcom/mediatek/common/agps/IMtkAgpsManager;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/agps/IMtkAgpsManager;

    move-object/from16 v70, v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_2f
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_30

    .line 912
    :goto_38
    :try_start_52
    const-string v7, "hugo_app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "agpsMgr="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v70

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    if-eqz v70, :cond_c

    .line 914
    const-string v7, "mtk-agps"

    invoke-interface/range {v70 .. v70}, Lcom/mediatek/common/agps/IMtkAgpsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_30

    .line 927
    :cond_c
    :goto_39
    :try_start_53
    const-class v7, Lcom/mediatek/common/perfservice/PerfServiceManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/PerfServiceManager;

    move-object/from16 v122, v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_31

    .line 933
    :goto_3a
    const/16 v121, 0x0

    .line 935
    .local v121, perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :try_start_54
    const-class v7, Lcom/mediatek/common/perfservice/IPerfService;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v9, v11

    const/4 v11, 0x1

    aput-object v122, v9, v11

    invoke-static {v7, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/mediatek/common/perfservice/IPerfService;

    move-object/from16 v121, v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_33

    .line 939
    :goto_3b
    :try_start_55
    const-string v7, "perfservice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perfService="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v121

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    if-eqz v121, :cond_d

    .line 941
    const-string v7, "mtk-perfservice"

    invoke-interface/range {v121 .. v121}, Lcom/mediatek/common/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_33

    .line 951
    :cond_d
    :goto_3c
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_34

    .line 962
    :goto_3d
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const-string v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_35

    .line 970
    :goto_3e
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    new-instance v116, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v116

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_36

    .end local v115           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v116, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v115, v116

    .line 977
    .end local v116           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v115       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_3f
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v78, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_37

    .line 979
    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .local v78, commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :try_start_5a
    const-string v7, "commontime_management"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_46

    move-object/from16 v77, v78

    .line 985
    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :goto_40
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_38

    .line 991
    :goto_41
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110040

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 994
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v92, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v92

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_39

    .line 997
    .end local v91           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .local v92, dreamy:Lcom/android/server/dreams/DreamManagerService;
    :try_start_5d
    const-string v7, "dreams"

    move-object/from16 v0, v92

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_45

    move-object/from16 v91, v92

    .line 1016
    .end local v92           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v91       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :cond_e
    :goto_42
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "PerfMgr state notifier"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    new-instance v120, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v120 .. v120}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_3a

    .line 1018
    .end local v119           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .local v120, perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :try_start_5f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v120

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_44

    move-object/from16 v119, v120

    .line 1041
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v120           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v121           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v119       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    :goto_43
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v48

    .line 1042
    .local v48, safeMode:Z
    if-eqz v48, :cond_1d

    .line 1043
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1045
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1047
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1056
    :goto_44
    :try_start_60
    invoke-virtual/range {v155 .. v155}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_3b

    .line 1062
    :goto_45
    :try_start_61
    invoke-virtual/range {v106 .. v106}, Lcom/android/internal/widget/LockSettingsService;->systemReady()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_3c

    .line 1067
    :goto_46
    if-eqz v86, :cond_f

    .line 1069
    :try_start_62
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_3d

    .line 1075
    :cond_f
    :goto_47
    if-eqz v117, :cond_10

    .line 1077
    :try_start_63
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_3e

    .line 1084
    :cond_10
    :goto_48
    :try_start_64
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_3f

    .line 1089
    :goto_49
    if-eqz v48, :cond_11

    .line 1090
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1096
    :cond_11
    invoke-virtual/range {v164 .. v164}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v79

    .line 1097
    .local v79, config:Landroid/content/res/Configuration;
    new-instance v108, Landroid/util/DisplayMetrics;

    invoke-direct/range {v108 .. v108}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1098
    .local v108, metrics:Landroid/util/DisplayMetrics;
    const-string v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/view/WindowManager;

    .line 1099
    .local v157, w:Landroid/view/WindowManager;
    invoke-interface/range {v157 .. v157}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v108

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1100
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v79

    move-object/from16 v1, v108

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1103
    :try_start_65
    move-object/from16 v0, v148

    move-object/from16 v1, v91

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_40

    .line 1109
    :goto_4a
    :try_start_66
    invoke-interface/range {v123 .. v123}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_41

    .line 1115
    :goto_4b
    :try_start_67
    move/from16 v0, v48

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_42

    .line 1121
    :goto_4c
    move-object/from16 v35, v5

    .line 1122
    .local v35, contextF:Landroid/content/Context;
    move-object/from16 v36, v110

    .line 1123
    .local v36, mountServiceF:Lcom/android/server/MountService;
    move-object/from16 v37, v8

    .line 1124
    .local v37, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v38, v30

    .line 1125
    .local v38, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v39, v29

    .line 1126
    .local v39, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v40, v25

    .line 1127
    .local v40, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v41, v80

    .line 1128
    .local v41, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v42, v89

    .line 1129
    .local v42, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v43, v153

    .line 1130
    .local v43, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v54, v144

    .line 1131
    .local v54, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v44, v148

    .line 1132
    .local v44, twilightF:Lcom/android/server/TwilightService;
    move-object/from16 v45, v151

    .line 1133
    .local v45, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v47, v72

    .line 1134
    .local v47, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v49, v158

    .line 1135
    .local v49, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v50, v98

    .line 1136
    .local v50, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v46, v127

    .line 1137
    .local v46, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v52, v104

    .line 1138
    .local v52, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v53, v83

    .line 1139
    .local v53, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v55, v115

    .line 1140
    .local v55, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v56, v77

    .line 1141
    .local v56, commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v57, v146

    .line 1142
    .local v57, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v51, v135

    .line 1143
    .local v51, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object/from16 v58, v91

    .line 1144
    .local v58, dreamyF:Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v59, v19

    .line 1145
    .local v59, inputManagerF:Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v137

    .line 1147
    .local v60, telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v139

    .line 1148
    .local v61, telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v62, v141

    .line 1149
    .local v62, telephonyRegistryF3:Ljava/lang/Object;
    move-object/from16 v63, v142

    .line 1151
    .local v63, telephonyRegistryF4:Ljava/lang/Object;
    move-object/from16 v64, v143

    .line 1152
    .local v64, thermalF:Ljava/lang/Object;
    move-object/from16 v65, v122

    .line 1153
    .local v65, perfServiceF:Lcom/mediatek/common/perfservice/PerfServiceManager;
    move-object/from16 v33, v109

    .line 1160
    .local v33, momF:Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$3;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v65}, Lcom/android/server/ServerThread$3;-><init>(Lcom/android/server/ServerThread;Lcom/mediatek/common/mom/IMobileManagerService;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry;Lcom/mediatek/common/thermal/MtkThermalSwitchManager;Lcom/mediatek/common/perfservice/PerfServiceManager;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1320
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1321
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_12
    new-instance v7, Ljava/lang/String;

    const-string v9, "Android:SysServerInit_END"

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/android/server/ServerThread;->addBootEvent(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1327
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void

    .line 175
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v5           #context:Landroid/content/Context;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v20           #uiHandler:Landroid/os/Handler;
    .end local v21           #wmHandler:Landroid/os/Handler;
    .end local v24           #onlyCore:Z
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v30           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v33           #momF:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v34           #headless:Z
    .end local v35           #contextF:Landroid/content/Context;
    .end local v36           #mountServiceF:Lcom/android/server/MountService;
    .end local v37           #batteryF:Lcom/android/server/BatteryService;
    .end local v38           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v39           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v40           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v42           #dockF:Lcom/android/server/DockObserver;
    .end local v43           #usbF:Lcom/android/server/usb/UsbService;
    .end local v44           #twilightF:Lcom/android/server/TwilightService;
    .end local v45           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v46           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v47           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v48           #safeMode:Z
    .end local v49           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v50           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v51           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v52           #locationF:Lcom/android/server/LocationManagerService;
    .end local v53           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v54           #throttleF:Lcom/android/server/ThrottleService;
    .end local v55           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v56           #commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;
    .end local v57           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v58           #dreamyF:Lcom/android/server/dreams/DreamManagerService;
    .end local v59           #inputManagerF:Lcom/android/server/input/InputManagerService;
    .end local v60           #telephonyRegistryF:Lcom/android/server/TelephonyRegistry;
    .end local v61           #telephonyRegistryF2:Lcom/android/server/TelephonyRegistry;
    .end local v62           #telephonyRegistryF3:Ljava/lang/Object;
    .end local v63           #telephonyRegistryF4:Ljava/lang/Object;
    .end local v64           #thermalF:Ljava/lang/Object;
    .end local v65           #perfServiceF:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v66           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .end local v79           #config:Landroid/content/res/Configuration;
    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v82           #contentService:Landroid/content/ContentService;
    .end local v83           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v86           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v89           #dock:Lcom/android/server/DockObserver;
    .end local v91           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v94           #factoryTest:I
    .end local v95           #factoryTestStr:Ljava/lang/String;
    .end local v97           #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .end local v98           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v104           #location:Lcom/android/server/LocationManagerService;
    .end local v106           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v108           #metrics:Landroid/util/DisplayMetrics;
    .end local v109           #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .end local v110           #mountService:Lcom/android/server/MountService;
    .end local v115           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v117           #notification:Lcom/android/server/NotificationManagerService;
    .end local v119           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v122           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v123           #pm:Landroid/content/pm/IPackageManager;
    .end local v127           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v129           #sdioAutoK:Lcom/android/server/SDIOAutoKService;
    .end local v131           #serial:Lcom/android/server/SerialService;
    .end local v133           #serviceDiscovery:Lcom/android/server/NsdService;
    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v141           #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .end local v142           #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .end local v143           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v144           #throttle:Lcom/android/server/ThrottleService;
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v148           #twilight:Lcom/android/server/TwilightService;
    .end local v150           #uiHandlerThread:Landroid/os/HandlerThread;
    .end local v151           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v153           #usb:Lcom/android/server/usb/UsbService;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .end local v157           #w:Landroid/view/WindowManager;
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v160           #wifi:Lcom/android/server/WifiService;
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v164           #wm:Lcom/android/server/wm/WindowManagerService;
    .end local v165           #wmHandlerThread:Landroid/os/HandlerThread;
    :cond_13
    const/16 v126, 0x0

    goto/16 :goto_0

    .line 181
    .restart local v126       #reboot:Z
    :cond_14
    const/16 v125, 0x0

    .restart local v125       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 189
    .end local v125           #reason:Ljava/lang/String;
    .end local v126           #reboot:Z
    .restart local v95       #factoryTestStr:Ljava/lang/String;
    :cond_15
    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v94

    goto/16 :goto_2

    .line 300
    .restart local v5       #context:Landroid/content/Context;
    .restart local v20       #uiHandler:Landroid/os/Handler;
    .restart local v21       #wmHandler:Landroid/os/Handler;
    .restart local v24       #onlyCore:Z
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v30       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v34       #headless:Z
    .restart local v66       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v75       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v82       #contentService:Landroid/content/ContentService;
    .restart local v88       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v89       #dock:Lcom/android/server/DockObserver;
    .restart local v94       #factoryTest:I
    .restart local v97       #hdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v109       #mom:Lcom/mediatek/common/mom/IMobileManagerService;
    .restart local v110       #mountService:Lcom/android/server/MountService;
    .restart local v112       #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    .restart local v113       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v115       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v123       #pm:Landroid/content/pm/IPackageManager;
    .restart local v124       #power:Lcom/android/server/power/PowerManagerService;
    .restart local v127       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v129       #sdioAutoK:Lcom/android/server/SDIOAutoKService;
    .restart local v131       #serial:Lcom/android/server/SerialService;
    .restart local v133       #serviceDiscovery:Lcom/android/server/NsdService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v141       #telephonyRegistry3:Lcom/android/server/TelephonyRegistry;
    .restart local v142       #telephonyRegistry4:Lcom/android/server/TelephonyRegistry;
    .restart local v144       #throttle:Lcom/android/server/ThrottleService;
    .restart local v148       #twilight:Lcom/android/server/TwilightService;
    .restart local v150       #uiHandlerThread:Landroid/os/HandlerThread;
    .restart local v151       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v153       #usb:Lcom/android/server/usb/UsbService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    .restart local v160       #wifi:Lcom/android/server/WifiService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v164       #wm:Lcom/android/server/wm/WindowManagerService;
    .restart local v165       #wmHandlerThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v93

    .line 301
    .local v93, e:Ljava/lang/Exception;
    :try_start_68
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Create message monitor service Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v93 .. v93}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_68 .. :try_end_68} :catch_2

    goto/16 :goto_3

    .line 305
    .end local v93           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v93

    .line 306
    .local v93, e:Ljava/lang/Throwable;
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "Starting message monitor service exception "

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_69} :catch_2

    goto/16 :goto_4

    .line 497
    .end local v93           #e:Ljava/lang/Throwable;
    .end local v112           #msgMonitorService:Lcom/mediatek/common/msgmonitorservice/IMessageLogger;
    :catch_2
    move-exception v93

    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v88

    .end local v88           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v124

    .end local v124           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v101, v102

    .line 498
    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .local v93, e:Ljava/lang/RuntimeException;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    :goto_4d
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 366
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v93           #e:Ljava/lang/RuntimeException;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #cryptState:Ljava/lang/String;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :cond_16
    :try_start_6a
    const-string v7, "1"

    move-object/from16 v0, v85

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 367
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v24, 0x1

    goto/16 :goto_5

    .line 371
    :cond_17
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 394
    .restart local v96       #firstBoot:Z
    :catch_3
    move-exception v93

    .line 395
    .local v93, e:Ljava/lang/Throwable;
    :goto_4e
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 497
    .end local v85           #cryptState:Ljava/lang/String;
    .end local v93           #e:Ljava/lang/Throwable;
    .end local v96           #firstBoot:Z
    :catch_4
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto :goto_4d

    .line 404
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #cryptState:Ljava/lang/String;
    .restart local v96       #firstBoot:Z
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5
    move-exception v93

    .line 405
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6a} :catch_4

    goto/16 :goto_9

    .line 411
    .end local v93           #e:Ljava/lang/Throwable;
    :cond_18
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 451
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v103           #lights:Lcom/android/server/LightsService;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :cond_19
    const/16 v22, 0x0

    goto/16 :goto_b

    :cond_1a
    const/16 v23, 0x0

    goto/16 :goto_c

    .line 471
    :cond_1b
    const/4 v7, 0x1

    move/from16 v0, v94

    if-ne v0, v7, :cond_1c

    .line 472
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 497
    :catch_6
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto :goto_4d

    .line 477
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :cond_1c
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v76, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v76

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/RuntimeException; {:try_start_6b .. :try_end_6b} :catch_6

    .line 479
    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .local v76, bluetooth:Lcom/android/server/BluetoothManagerService;
    :try_start_6c
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v76

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 489
    new-instance v67, Landroid/server/BluetoothProfileManagerService;

    move-object/from16 v0, v67

    invoke-direct {v0, v5}, Landroid/server/BluetoothProfileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_6c .. :try_end_6c} :catch_64

    .line 490
    .end local v66           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .local v67, BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    :try_start_6d
    const-string v7, "bluetooth_profile_manager"

    move-object/from16 v0, v67

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6d .. :try_end_6d} :catch_65

    move-object/from16 v66, v67

    .end local v67           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v66       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v75, v76

    .end local v76           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v75       #bluetooth:Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_d

    .line 523
    .end local v85           #cryptState:Ljava/lang/String;
    .end local v96           #firstBoot:Z
    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v83       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v91       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v98       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    .restart local v104       #location:Lcom/android/server/LocationManagerService;
    .restart local v106       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v119       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v122       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_7
    move-exception v93

    .line 524
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v7, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 531
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v93

    .line 532
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 538
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v93

    .line 539
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 544
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v93

    .line 545
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 566
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v93

    .line 567
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 575
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v93

    .line 576
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 583
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v93

    .line 584
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_52
    const-string v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 591
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v93

    .line 592
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_53
    const-string v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 599
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v93

    .line 600
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 607
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v93

    .line 608
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 615
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v93

    .line 616
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_54
    const-string v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 623
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v93

    .line 624
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_55
    const-string v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 633
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v93

    move-object/from16 v25, v113

    .line 634
    .end local v113           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_56
    const-string v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 641
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v93

    .line 642
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_57
    const-string v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 649
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v93

    .line 650
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_58
    const-string v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 662
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v93

    .line 663
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_59
    const-string v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 671
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v93

    .line 672
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 680
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v93

    .line 681
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5a
    const-string v7, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 688
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v93

    .line 689
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 704
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v93

    .line 705
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 711
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v93

    .line 712
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 720
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v93

    .line 721
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5b
    const-string v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 728
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v93

    .line 729
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 736
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v93

    .line 737
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5c
    const-string v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 744
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v93

    .line 745
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5d
    const-string v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 752
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v93

    .line 753
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 763
    .end local v93           #e:Ljava/lang/Throwable;
    .restart local v130       #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_21
    move-exception v93

    .line 764
    .local v93, e:Ljava/lang/Exception;
    :try_start_6e
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ISearchEngineManagerService systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v93 .. v93}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_22

    goto/16 :goto_2a

    .line 771
    .end local v93           #e:Ljava/lang/Exception;
    .end local v130           #searchEngineService:Lcom/mediatek/common/search/ISearchEngineManagerService;
    :catch_22
    move-exception v93

    .line 772
    .local v93, e:Ljava/lang/Throwable;
    const-string v7, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 780
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v93

    .line 781
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 792
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v93

    .line 793
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5e
    const-string v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 801
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v93

    .line 802
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 832
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v93

    .line 833
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 841
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v93

    .line 842
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 850
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v93

    .line 851
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_5f
    const-string v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 859
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v93

    .line 860
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_60
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 866
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v93

    .line 867
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 874
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v93

    .line 875
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 882
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v93

    .line 883
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 890
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_2d
    move-exception v93

    .line 891
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_61
    const-string v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 897
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v93

    .line 898
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 909
    .end local v93           #e:Ljava/lang/Throwable;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    :catch_2f
    move-exception v93

    .line 910
    .local v93, e:Ljava/lang/Exception;
    :try_start_6f
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hugo_app systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v93 .. v93}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_30

    goto/16 :goto_38

    .line 917
    .end local v93           #e:Ljava/lang/Exception;
    :catch_30
    move-exception v93

    .line 918
    .local v93, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "hugo_app Failure starting Mtk Agps Manager"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_39

    .line 928
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v93

    .line 929
    .local v93, e:Ljava/lang/Exception;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FAIL starting PerfService Manager"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v93

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    .line 936
    .end local v93           #e:Ljava/lang/Exception;
    .restart local v121       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    :catch_32
    move-exception v93

    .line 937
    .restart local v93       #e:Ljava/lang/Exception;
    :try_start_70
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perfservice systemServer Exception="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v93 .. v93}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_33

    goto/16 :goto_3b

    .line 944
    .end local v93           #e:Ljava/lang/Exception;
    :catch_33
    move-exception v93

    .line 945
    .local v93, e:Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "perfservice Failure starting PerfService"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3c

    .line 953
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_34
    move-exception v93

    .line 954
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 965
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_35
    move-exception v93

    .line 966
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 972
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_36
    move-exception v93

    .line 973
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 980
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_37
    move-exception v93

    .line 981
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_62
    const-string v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 987
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_38
    move-exception v93

    .line 988
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 998
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_39
    move-exception v93

    .line 999
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_63
    const-string v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1019
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_3a
    move-exception v93

    .line 1020
    .restart local v93       #e:Ljava/lang/Throwable;
    :goto_64
    const-string v7, "SystemServer"

    const-string v9, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v93

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_43

    .line 1050
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v93           #e:Ljava/lang/Throwable;
    .end local v121           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v48       #safeMode:Z
    :cond_1d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_44

    .line 1057
    :catch_3b
    move-exception v93

    .line 1058
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_45

    .line 1063
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_3c
    move-exception v93

    .line 1064
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1070
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_3d
    move-exception v93

    .line 1071
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1078
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_3e
    move-exception v93

    .line 1079
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1085
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_3f
    move-exception v93

    .line 1086
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_49

    .line 1104
    .end local v93           #e:Ljava/lang/Throwable;
    .restart local v79       #config:Landroid/content/res/Configuration;
    .restart local v108       #metrics:Landroid/util/DisplayMetrics;
    .restart local v157       #w:Landroid/view/WindowManager;
    :catch_40
    move-exception v93

    .line 1105
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1110
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_41
    move-exception v93

    .line 1111
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1116
    .end local v93           #e:Ljava/lang/Throwable;
    :catch_42
    move-exception v93

    .line 1117
    .restart local v93       #e:Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4c

    .line 377
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48           #safeMode:Z
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v79           #config:Landroid/content/res/Configuration;
    .end local v83           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v86           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v91           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v93           #e:Ljava/lang/Throwable;
    .end local v98           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v104           #location:Lcom/android/server/LocationManagerService;
    .end local v106           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v108           #metrics:Landroid/util/DisplayMetrics;
    .end local v117           #notification:Lcom/android/server/NotificationManagerService;
    .end local v119           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v122           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v143           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v157           #w:Landroid/view/WindowManager;
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #cryptState:Ljava/lang/String;
    .restart local v96       #firstBoot:Z
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v113       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_43
    move-exception v7

    goto/16 :goto_7

    .line 1019
    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v85           #cryptState:Ljava/lang/String;
    .end local v96           #firstBoot:Z
    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .end local v103           #lights:Lcom/android/server/LightsService;
    .end local v113           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v70       #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v83       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v91       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v98       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    .restart local v104       #location:Lcom/android/server/LocationManagerService;
    .restart local v106       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v120       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v121       #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v122       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_44
    move-exception v93

    move-object/from16 v119, v120

    .end local v120           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v119       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    goto :goto_64

    .line 998
    .end local v91           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v92       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    :catch_45
    move-exception v93

    move-object/from16 v91, v92

    .end local v92           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v91       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_63

    .line 980
    .end local v77           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v78       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    :catch_46
    move-exception v93

    move-object/from16 v77, v78

    .end local v78           #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    .restart local v77       #commonTimeMgmtService:Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_62

    .line 890
    .end local v70           #agpsMgr:Lcom/mediatek/common/agps/IMtkAgpsManager;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v121           #perfService:Lcom/mediatek/common/perfservice/IPerfService;
    .restart local v73       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_47
    move-exception v93

    move-object/from16 v72, v73

    .end local v73           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_61

    .line 859
    .end local v131           #serial:Lcom/android/server/SerialService;
    .restart local v132       #serial:Lcom/android/server/SerialService;
    :catch_48
    move-exception v93

    move-object/from16 v131, v132

    .end local v132           #serial:Lcom/android/server/SerialService;
    .restart local v131       #serial:Lcom/android/server/SerialService;
    goto/16 :goto_60

    .line 850
    .end local v153           #usb:Lcom/android/server/usb/UsbService;
    .restart local v154       #usb:Lcom/android/server/usb/UsbService;
    :catch_49
    move-exception v93

    move-object/from16 v153, v154

    .end local v154           #usb:Lcom/android/server/usb/UsbService;
    .restart local v153       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_5f

    .line 792
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v159       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4a
    move-exception v93

    move-object/from16 v158, v159

    .end local v159           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_5e

    .line 744
    .end local v83           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v84       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_4b
    move-exception v93

    move-object/from16 v83, v84

    .end local v84           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v83       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_5d

    .line 736
    .end local v104           #location:Lcom/android/server/LocationManagerService;
    .restart local v105       #location:Lcom/android/server/LocationManagerService;
    :catch_4c
    move-exception v93

    move-object/from16 v104, v105

    .end local v105           #location:Lcom/android/server/LocationManagerService;
    .restart local v104       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_5c

    .line 720
    .end local v117           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v118       #notification:Lcom/android/server/NotificationManagerService;
    :catch_4d
    move-exception v93

    move-object/from16 v117, v118

    .end local v118           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v117       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_5b

    .line 680
    .end local v144           #throttle:Lcom/android/server/ThrottleService;
    .restart local v145       #throttle:Lcom/android/server/ThrottleService;
    :catch_4e
    move-exception v93

    move-object/from16 v144, v145

    .end local v145           #throttle:Lcom/android/server/ThrottleService;
    .restart local v144       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_5a

    .line 662
    .end local v80           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v81       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_4f
    move-exception v93

    move-object/from16 v80, v81

    .end local v81           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v80       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_59

    .line 649
    .end local v160           #wifi:Lcom/android/server/WifiService;
    .restart local v161       #wifi:Lcom/android/server/WifiService;
    :catch_50
    move-exception v93

    move-object/from16 v160, v161

    .end local v161           #wifi:Lcom/android/server/WifiService;
    .restart local v160       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_58

    .line 641
    .end local v162           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v163       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_51
    move-exception v93

    move-object/from16 v162, v163

    .end local v163           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v162       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_57

    .line 633
    :catch_52
    move-exception v93

    goto/16 :goto_56

    .line 623
    .end local v25           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v113       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v114       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_53
    move-exception v93

    move-object/from16 v29, v114

    .end local v114           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v29       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_55

    .line 615
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v147       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_54
    move-exception v93

    move-object/from16 v146, v147

    .end local v147           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_54

    .line 591
    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v136       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_55
    move-exception v93

    move-object/from16 v135, v136

    .end local v136           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_53

    .line 583
    .end local v86           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v87       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_56
    move-exception v93

    move-object/from16 v86, v87

    .end local v87           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v86       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_52

    .line 575
    .end local v106           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v107       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    :catch_57
    move-exception v93

    move-object/from16 v106, v107

    .end local v107           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v106       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    goto/16 :goto_51

    .line 566
    .end local v110           #mountService:Lcom/android/server/MountService;
    .restart local v111       #mountService:Lcom/android/server/MountService;
    :catch_58
    move-exception v93

    move-object/from16 v110, v111

    .end local v111           #mountService:Lcom/android/server/MountService;
    .restart local v110       #mountService:Lcom/android/server/MountService;
    goto/16 :goto_50

    .line 553
    :catch_59
    move-exception v7

    goto/16 :goto_13

    .line 523
    .end local v98           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v99       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_5a
    move-exception v93

    move-object/from16 v98, v99

    .end local v99           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v98       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_4f

    .line 497
    .end local v4           #power:Lcom/android/server/power/PowerManagerService;
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v72           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v83           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v86           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v91           #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .end local v98           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v104           #location:Lcom/android/server/LocationManagerService;
    .end local v106           #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .end local v117           #notification:Lcom/android/server/NotificationManagerService;
    .end local v119           #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .end local v122           #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .end local v135           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v143           #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .end local v146           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v158           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v88       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v124       #power:Lcom/android/server/power/PowerManagerService;
    :catch_5b
    move-exception v93

    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v88

    .end local v88           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v4, v124

    .end local v124           #power:Lcom/android/server/power/PowerManagerService;
    .restart local v4       #power:Lcom/android/server/power/PowerManagerService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v10           #display:Lcom/android/server/display/DisplayManagerService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v88       #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    :catch_5c
    move-exception v93

    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v10, v88

    .end local v88           #display:Lcom/android/server/display/DisplayManagerService;
    .restart local v10       #display:Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    :catch_5d
    move-exception v93

    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    :catch_5e
    move-exception v93

    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v69       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v85       #cryptState:Ljava/lang/String;
    .restart local v96       #firstBoot:Z
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_5f
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v103

    .end local v103           #lights:Lcom/android/server/LightsService;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    move-object/from16 v68, v69

    .end local v69           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_60
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v74

    .end local v74           #battery:Lcom/android/server/BatteryService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_61
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :catch_62
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v71

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :catch_63
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v100

    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v76       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :catch_64
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v75, v76

    .end local v76           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v75       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .end local v66           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .end local v75           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .end local v155           #vibrator:Lcom/android/server/VibratorService;
    .restart local v67       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v76       #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v156       #vibrator:Lcom/android/server/VibratorService;
    :catch_65
    move-exception v93

    move-object/from16 v139, v140

    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v137, v138

    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    move-object/from16 v66, v67

    .end local v67           #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    .restart local v66       #BluetoothProfileManager:Landroid/server/BluetoothProfileManagerService;
    move-object/from16 v75, v76

    .end local v76           #bluetooth:Lcom/android/server/BluetoothManagerService;
    .restart local v75       #bluetooth:Lcom/android/server/BluetoothManagerService;
    move-object/from16 v155, v156

    .end local v156           #vibrator:Lcom/android/server/VibratorService;
    .restart local v155       #vibrator:Lcom/android/server/VibratorService;
    move-object/from16 v101, v102

    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    goto/16 :goto_4d

    .line 394
    .end local v6           #lights:Lcom/android/server/LightsService;
    .end local v8           #battery:Lcom/android/server/BatteryService;
    .end local v15           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v19           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v68           #accountManager:Landroid/accounts/AccountManagerService;
    .end local v101           #installer:Lcom/android/server/pm/Installer;
    .end local v137           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v139           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v69       #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v71       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v74       #battery:Lcom/android/server/BatteryService;
    .restart local v100       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v102       #installer:Lcom/android/server/pm/Installer;
    .restart local v103       #lights:Lcom/android/server/LightsService;
    .restart local v138       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v140       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    :catch_66
    move-exception v93

    move-object/from16 v68, v69

    .end local v69           #accountManager:Landroid/accounts/AccountManagerService;
    .restart local v68       #accountManager:Landroid/accounts/AccountManagerService;
    goto/16 :goto_4e

    .end local v71           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #battery:Lcom/android/server/BatteryService;
    .end local v85           #cryptState:Ljava/lang/String;
    .end local v96           #firstBoot:Z
    .end local v100           #inputManager:Lcom/android/server/input/InputManagerService;
    .end local v102           #installer:Lcom/android/server/pm/Installer;
    .end local v103           #lights:Lcom/android/server/LightsService;
    .end local v138           #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .end local v140           #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v6       #lights:Lcom/android/server/LightsService;
    .restart local v8       #battery:Lcom/android/server/BatteryService;
    .restart local v15       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v19       #inputManager:Lcom/android/server/input/InputManagerService;
    .restart local v72       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v83       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v86       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v91       #dreamy:Lcom/android/server/dreams/DreamManagerService;
    .restart local v98       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v101       #installer:Lcom/android/server/pm/Installer;
    .restart local v104       #location:Lcom/android/server/LocationManagerService;
    .restart local v106       #lockSettings:Lcom/android/internal/widget/LockSettingsService;
    .restart local v117       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v119       #perfMgrNotifier:Lcom/android/server/PerfMgrStateNotifier;
    .restart local v122       #perfServiceMgr:Lcom/mediatek/common/perfservice/PerfServiceManager;
    .restart local v135       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v137       #telephonyRegistry:Lcom/android/server/TelephonyRegistry;
    .restart local v139       #telephonyRegistry2:Lcom/android/server/TelephonyRegistry;
    .restart local v143       #thermalMgr:Lcom/mediatek/common/thermal/MtkThermalSwitchManager;
    .restart local v146       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v158       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1e
    move-object/from16 v25, v113

    .end local v113           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_43
.end method
