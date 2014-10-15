.class public final Lcom/mediatek/amsplus/ActivityStackPlus;
.super Ljava/lang/Object;
.source "ActivityStackPlus.java"

# interfaces
.implements Lcom/mediatek/common/amsplus/IAmsPlus;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG_LTK:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_LTK:Z = false

#the value of this static final field might be set in the static constructor
.field private static final FORCE_KILL_TIMEOUT:Z = false

.field private static final HIDDEN_APP_MIN_ADJ:I = 0x9

#the value of this static final field might be set in the static constructor
.field private static final LTK_3D_LIMIT:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final LTK_BG_APP_LIMIT:J = 0x0L

.field private static final LTK_THRESHOLD:I = 0x10000000

.field private static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field private static final PREVIOUS_APP_ADJ:I = 0x7

.field private static final TAG:Ljava/lang/String; = "LaunchTimeKiller"


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/high16 v8, 0x320

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    const-wide/32 v6, 0x10000000

    cmp-long v1, v4, v6

    if-gtz v1, :cond_0

    move v0, v2

    .line 72
    .local v0, shouldEnable:Z
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "sys.ltk.disable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v2, v1, :cond_1

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    .line 73
    const-string v1, "sys.ltk.debug"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_2

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    .line 74
    const-string v1, "sys.ltk.forcekill"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_3

    :goto_3
    sput-boolean v2, Lcom/mediatek/amsplus/ActivityStackPlus;->FORCE_KILL_TIMEOUT:Z

    .line 75
    const-string v1, "sys.ltk.bgAppLimit"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    .line 76
    const-string v1, "sys.ltk.3dLimit"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_3D_LIMIT:J

    .line 77
    const-string v1, "LaunchTimeKiller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTK] LTK Enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v1, "LaunchTimeKiller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTK] LTK Debug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v1, "LaunchTimeKiller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTK] LTK Force Kill Timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->FORCE_KILL_TIMEOUT:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "LaunchTimeKiller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTK] LTK Bg App Limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v1, "LaunchTimeKiller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LTK] LTK 3D Limit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_3D_LIMIT:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void

    .end local v0           #shouldEnable:Z
    :cond_0
    move v0, v3

    .line 71
    goto/16 :goto_0

    .restart local v0       #shouldEnable:Z
    :cond_1
    move v1, v3

    .line 72
    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 73
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 74
    goto/16 :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method private collectDepedencyList(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Ljava/util/ArrayList;
    .locals 8
    .parameter "record"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x40

    .line 269
    const-string v3, "collectDepedencyList"

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;->getWaitProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v2

    .line 274
    .local v2, waitAct:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    if-eqz v2, :cond_1

    .line 276
    invoke-interface {v2}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v0

    .line 277
    .local v0, pid:I
    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v3, :cond_0

    .line 278
    const-string v3, "LaunchTimeKiller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LTK] activity result expected, add to dependency list:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v0           #pid:I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 283
    return-object v1
.end method

.method private isAndroidDefaultPackageName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const-wide/16 v2, 0x40

    .line 208
    const-string v1, "isAndroidDefaultPackageName"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 209
    const-string v1, "com\\.android\\..*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android\\..*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com\\.mediatek\\..*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 212
    .local v0, isAndroidDefault:Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    return v0

    .line 209
    .end local v0           #isAndroidDefault:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private kill(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)V
    .locals 7
    .parameter "rec"

    .prologue
    const/4 v4, 0x1

    .line 196
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v1

    .line 197
    .local v1, pid:I
    const-string v2, "LaunchTimeKiller"

    const-string v3, "[LTK] LTK kill pid: %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 200
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->setKilledLTK(Z)I

    .line 201
    const-string v2, "/sys/module/mlog/parameters/do_mlog"

    const-string v3, "4"

    invoke-direct {p0, v2, v3}, Lcom/mediatek/amsplus/ActivityStackPlus;->writeFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LaunchTimeKiller"

    const-string v3, "Exception thrown during kill:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private needTrigger(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Z
    .locals 14
    .parameter "record"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 220
    sget-boolean v9, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    if-nez v9, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v8

    .line 224
    :cond_1
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;->getLaunchedProcess()Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    move-result-object v0

    .line 225
    .local v0, ar:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    invoke-interface {v0}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->isLowMemory()Z

    move-result v9

    if-nez v9, :cond_2

    .line 226
    sget-boolean v7, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v7, :cond_0

    .line 227
    const-string v7, "LaunchTimeKiller"

    const-string v9, "[LTK] beforeScheduleLaunchActivity() skipped, not low memory state"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :cond_2
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 237
    .local v5, launchIntent:Landroid/content/Intent;
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;->isLaunchingHomeActivity()Z

    move-result v3

    .line 238
    .local v3, isHomeActivity:Z
    invoke-interface {v0}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, launchedPackageName:Ljava/lang/String;
    const-string v9, "LaunchTimeKiller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[LTK] intent:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MAIN"

    if-ne v9, v10, :cond_4

    move v4, v7

    .line 242
    .local v4, isLaunchingApp:Z
    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/amsplus/ActivityStackPlus;->isAndroidDefaultPackageName(Ljava/lang/String;)Z

    move-result v1

    .line 243
    .local v1, isAndroidDefault:Z
    const-string v9, "com\\.android\\.gallery3d.*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 244
    .local v2, isGalleryCamera:Z
    const-string v9, "LaunchTimeKiller"

    const-string v10, "[LTK] criterion(%b, %b, %b, %b)"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v11, v7

    const/4 v12, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    :cond_3
    move v8, v7

    goto/16 :goto_0

    .end local v1           #isAndroidDefault:Z
    .end local v2           #isGalleryCamera:Z
    .end local v4           #isLaunchingApp:Z
    :cond_4
    move v4, v8

    .line 240
    goto :goto_1
.end method

.method private shouldKillProcess(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)Z
    .locals 12
    .parameter "p"

    .prologue
    const-wide/16 v10, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 249
    const-string v6, "shouldKillProcess"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getAdj()I

    move-result v0

    .line 253
    .local v0, adj:I
    const/16 v1, 0x9

    .line 255
    .local v1, minRemovalAdj:I
    const/4 v3, 0x0

    .line 256
    .local v3, shouldKill:Z
    const/16 v6, 0x9

    if-lt v0, v6, :cond_1

    .line 257
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v2

    .line 258
    .local v2, pid:I
    invoke-static {v2}, Landroid/os/Process;->getRswapRssSum(I)J

    move-result-wide v6

    sget-wide v8, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    move v3, v4

    .line 259
    :goto_0
    if-nez v3, :cond_0

    sget-boolean v6, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v6, :cond_1

    .line 260
    :cond_0
    const-string v6, "LaunchTimeKiller"

    const-string v7, "[LTK] hidden(%d) large process %d in low mem"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v2           #pid:I
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 265
    return v3

    .restart local v2       #pid:I
    :cond_2
    move v3, v5

    .line 258
    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "path"
    .parameter "data"

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 294
    if-eqz v2, :cond_2

    .line 296
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 301
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 297
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 298
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    .line 292
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "LaunchTimeKiller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    if-eqz v1, :cond_0

    .line 296
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 297
    :catch_2
    move-exception v3

    goto :goto_0

    .line 294
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 296
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 298
    :cond_1
    :goto_3
    throw v3

    .line 297
    :catch_3
    move-exception v4

    goto :goto_3

    .line 294
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 291
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public afterAdjAdjustment(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;IILcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)I
    .locals 9
    .parameter "app"
    .parameter "fromAdj"
    .parameter "toAdj"
    .parameter "topActivity"

    .prologue
    const/4 v8, 0x0

    .line 92
    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    if-nez v3, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v8

    .line 96
    :cond_1
    sget-boolean v3, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v3, :cond_2

    .line 97
    const-string v3, "LaunchTimeKiller"

    const-string v4, "[LTK] afterAdjAdjustment()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    if-le p3, p2, :cond_0

    const/4 v3, 0x7

    if-lt p3, v3, :cond_0

    .line 102
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/amsplus/ActivityStackPlus;->isAndroidDefaultPackageName(Ljava/lang/String;)Z

    move-result v1

    .line 103
    .local v1, isAndroidDefault:Z
    if-nez v1, :cond_0

    .line 104
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v2

    .line 105
    .local v2, pid:I
    invoke-static {v2}, Landroid/os/Process;->getRswapRssSum(I)J

    move-result-wide v3

    sget-wide v5, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->isLowMemory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-direct {p0, p4}, Lcom/mediatek/amsplus/ActivityStackPlus;->collectDepedencyList(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    .local v0, depList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    const-string v3, "LaunchTimeKiller"

    const-string v4, "[LTK]Lowered app %d (%d->%d) too large, kill"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p1}, Lcom/mediatek/amsplus/ActivityStackPlus;->kill(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)V

    goto :goto_0
.end method

.method public beforeScheduleLaunchActivity(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)I
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x0

    .line 169
    sget-boolean v6, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    if-nez v6, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v8

    .line 172
    :cond_1
    sget-boolean v6, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v6, :cond_2

    .line 173
    const-string v6, "LaunchTimeKiller"

    const-string v7, "[LTK] beforeScheduleLaunchActivity()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/amsplus/ActivityStackPlus;->needTrigger(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    invoke-direct {p0, p1}, Lcom/mediatek/amsplus/ActivityStackPlus;->collectDepedencyList(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Ljava/util/ArrayList;

    move-result-object v5

    .line 180
    .local v5, whiteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;->getRecords()Ljava/util/ArrayList;

    move-result-object v4

    .line 181
    .local v4, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;

    .line 182
    .local v2, p:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    invoke-interface {v2}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v3

    .line 183
    .local v3, pid:I
    invoke-direct {p0, v2}, Lcom/mediatek/amsplus/ActivityStackPlus;->shouldKillProcess(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 184
    invoke-direct {p0, v2}, Lcom/mediatek/amsplus/ActivityStackPlus;->kill(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 188
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #p:Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;
    .end local v3           #pid:I
    .end local v4           #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;>;"
    .end local v5           #whiteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "LaunchTimeKiller"

    const-string v7, "[LTK] Exception in beforeScheduleLaunchActivity():"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    return v0
.end method

.method public onActivityPauseTimeout(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;Z)I
    .locals 15
    .parameter "timeoutProcess"
    .parameter "topActivity"
    .parameter "timeout"

    .prologue
    .line 118
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->ENABLE_LTK:Z

    if-nez v10, :cond_0

    .line 119
    const/4 v10, 0x0

    .line 165
    :goto_0
    return v10

    .line 122
    :cond_0
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v10, :cond_1

    .line 123
    const-string v10, "LaunchTimeKiller"

    const-string v11, "[LTK] onActivityPauseTimeout()"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->FORCE_KILL_TIMEOUT:Z

    if-eqz v10, :cond_2

    .line 127
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/amsplus/ActivityStackPlus;->kill(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)V

    .line 128
    const/4 v10, 0x1

    goto :goto_0

    .line 131
    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/amsplus/ActivityStackPlus;->isAndroidDefaultPackageName(Ljava/lang/String;)Z

    move-result v3

    .line 132
    .local v3, isAndroidDefault:Z
    if-eqz v3, :cond_4

    .line 133
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v10, :cond_3

    .line 134
    const-string v10, "LaunchTimeKiller"

    const-string v11, "[LTK] timeout process is system app, skip."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 139
    :cond_4
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPid()I

    move-result v9

    .line 140
    .local v9, timeoutPid:I
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/mediatek/amsplus/ActivityStackPlus;->collectDepedencyList(Lcom/mediatek/common/amsplus/IAmsPlusLaunchRecord;)Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .local v2, depList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getAdj()I

    move-result v1

    .line 142
    .local v1, adj:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 143
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-eqz v10, :cond_5

    .line 144
    const-string v10, "LaunchTimeKiller"

    const-string v11, "[LTK] timeout process is dependent, skip."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 149
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPauseAppMemUsage()J

    move-result-wide v10

    sget-wide v12, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_c

    const/4 v5, 0x1

    .line 150
    .local v5, isLargeApp:Z
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->getPause3DUsage()J

    move-result-wide v10

    sget-wide v12, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_3D_LIMIT:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_d

    const/4 v4, 0x1

    .line 151
    .local v4, isHeavy3D:Z
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;->isLowMemory()Z

    move-result v6

    .line 152
    .local v6, isLowMemory:Z
    invoke-static {v9}, Landroid/os/Process;->getRswapRssSum(I)J

    move-result-wide v10

    sget-wide v12, Lcom/mediatek/amsplus/ActivityStackPlus;->LTK_BG_APP_LIMIT:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_e

    const/4 v8, 0x1

    .line 153
    .local v8, stillLargeApp:Z
    :goto_3
    const/4 v7, 0x0

    .line 155
    .local v7, shouldKill:Z
    if-eqz p3, :cond_7

    if-nez v6, :cond_8

    if-nez v5, :cond_8

    if-nez v4, :cond_8

    :cond_7
    if-eqz v8, :cond_f

    if-nez v4, :cond_8

    if-eqz v6, :cond_f

    :cond_8
    const/4 v7, 0x1

    .line 158
    :goto_4
    sget-boolean v10, Lcom/mediatek/amsplus/ActivityStackPlus;->DEBUG_LTK:Z

    if-nez v10, :cond_9

    if-eqz v7, :cond_a

    .line 159
    :cond_9
    const-string v10, "LaunchTimeKiller"

    const-string v11, "[LTK] timeout process %d, isTimeout=%b, isLarge=%b, isLowMem=%b, isHeavy3D=%b, stillLarge=%b"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_a
    if-eqz v7, :cond_b

    .line 162
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/amsplus/ActivityStackPlus;->kill(Lcom/mediatek/common/amsplus/IAmsPlusProcessRecord;)V

    .line 165
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 149
    .end local v4           #isHeavy3D:Z
    .end local v5           #isLargeApp:Z
    .end local v6           #isLowMemory:Z
    .end local v7           #shouldKill:Z
    .end local v8           #stillLargeApp:Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    .line 150
    .restart local v5       #isLargeApp:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_2

    .line 152
    .restart local v4       #isHeavy3D:Z
    .restart local v6       #isLowMemory:Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 155
    .restart local v7       #shouldKill:Z
    .restart local v8       #stillLargeApp:Z
    :cond_f
    const/4 v7, 0x0

    goto :goto_4
.end method
