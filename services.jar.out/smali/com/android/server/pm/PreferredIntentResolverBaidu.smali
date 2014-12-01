.class public Lcom/android/server/pm/PreferredIntentResolverBaidu;
.super Lcom/android/server/IntentResolver;
.source "PreferredIntentResolverBaidu.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Lcom/android/server/pm/PreferredActivityBaidu;",
        "Lcom/android/server/pm/PreferredActivityBaidu;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/server/pm/PreferredIntentResolverBaidu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method

.method private addDefault(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 68
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 69
    const-string v5, "http"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 70
    const-string v5, "https"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 71
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.baidu.browser.apps"

    const-string v8, "com.baidu.browser.framework.BdBrowserActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 74
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 77
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 78
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.baidu.home2"

    const-string v8, "com.baidu.launcher.app.Launcher"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 81
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 84
    const-string v5, "smsto"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 85
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.contacts"

    const-string v8, "com.android.mms.ui.ComposeMessageActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 88
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v5, "android.intent.action.DIAL"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 92
    const-string v5, "tel"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 93
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.contacts"

    const-string v8, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 96
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 99
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.baidu.camera"

    const-string v8, "com.baidu.camera.CameraActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 102
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 103
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 105
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 107
    :try_start_0
    const-string v5, "image/*"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.baidu.gallery3d"

    const-string v8, "com.baidu.gallery3d.app.Gallery"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 114
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 117
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 119
    :try_start_1
    const-string v5, "audio/*"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :goto_1
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.baidu.musicplayer"

    const-string v8, "com.baidu.musicplayer.activity.MainFragmentActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v1, v6}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    .line 126
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 130
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 131
    const-string v5, "mailto"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 133
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.android.email"

    const-string v6, "com.android.email.activity.MessageCompose"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v2, hasAccountEmail:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.android.email"

    const-string v6, "com.android.email.activity.NoAccount"

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v3, hasNoAccountEmail:Landroid/content/ComponentName;
    :try_start_2
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    invoke-direct {v5, v1, v3}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    .end local v2           #hasAccountEmail:Landroid/content/ComponentName;
    .end local v3           #hasNoAccountEmail:Landroid/content/ComponentName;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v2       #hasAccountEmail:Landroid/content/ComponentName;
    .restart local v3       #hasNoAccountEmail:Landroid/content/ComponentName;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_3
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    invoke-direct {v5, v1, v2}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Lcom/android/server/pm/PreferredActivityBaidu;

    invoke-direct {v5, v1, v2}, Lcom/android/server/pm/PreferredActivityBaidu;-><init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/pm/PreferredIntentResolverBaidu;
    .locals 1
    .parameter "context"

    .prologue
    .line 144
    sget-object v0, Lcom/android/server/pm/PreferredIntentResolverBaidu;->mInstance:Lcom/android/server/pm/PreferredIntentResolverBaidu;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolverBaidu;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolverBaidu;-><init>()V

    sput-object v0, Lcom/android/server/pm/PreferredIntentResolverBaidu;->mInstance:Lcom/android/server/pm/PreferredIntentResolverBaidu;

    .line 146
    sget-object v0, Lcom/android/server/pm/PreferredIntentResolverBaidu;->mInstance:Lcom/android/server/pm/PreferredIntentResolverBaidu;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->addDefault(Landroid/content/Context;)V

    .line 148
    :cond_0
    sget-object v0, Lcom/android/server/pm/PreferredIntentResolverBaidu;->mInstance:Lcom/android/server/pm/PreferredIntentResolverBaidu;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    check-cast p1, Lcom/android/server/pm/PreferredActivityBaidu;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->allowFilterResult(Lcom/android/server/pm/PreferredActivityBaidu;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Lcom/android/server/pm/PreferredActivityBaidu;Ljava/util/List;)Z
    .locals 3
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PreferredActivityBaidu;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PreferredActivityBaidu;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<Lcom/android/server/pm/PreferredActivityBaidu;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 50
    invoke-virtual {p1}, Lcom/android/server/pm/PreferredActivityBaidu;->getmComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PreferredActivityBaidu;

    invoke-virtual {v1}, Lcom/android/server/pm/PreferredActivityBaidu;->getmComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 54
    :goto_1
    return v1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    check-cast p3, Lcom/android/server/pm/PreferredActivityBaidu;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivityBaidu;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PreferredActivityBaidu;)V
    .locals 0
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 61
    return-void
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->newArray(I)[Lcom/android/server/pm/PreferredActivityBaidu;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Lcom/android/server/pm/PreferredActivityBaidu;
    .locals 1
    .parameter "size"

    .prologue
    .line 43
    new-array v0, p1, [Lcom/android/server/pm/PreferredActivityBaidu;

    return-object v0
.end method

.method protected bridge synthetic packageForFilter(Landroid/content/IntentFilter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    check-cast p1, Lcom/android/server/pm/PreferredActivityBaidu;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PreferredIntentResolverBaidu;->packageForFilter(Lcom/android/server/pm/PreferredActivityBaidu;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected packageForFilter(Lcom/android/server/pm/PreferredActivityBaidu;)Ljava/lang/String;
    .locals 1
    .parameter "filter"

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/android/server/pm/PreferredActivityBaidu;->getmComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
