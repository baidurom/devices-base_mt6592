.class public Lcom/mediatek/search/SearchEngineManagerService;
.super Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;,
        Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchEngineManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

.field private mSearchEngineInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchEngineObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;-><init>()V

    .line 117
    new-instance v0, Lcom/mediatek/search/SearchEngineManagerService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/search/SearchEngineManagerService$1;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    .line 109
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    .line 110
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/search/SearchEngineManagerService$BootCompletedReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/common/regionalphone/RegionalPhone;->SEARCHENGINE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/search/SearchEngineManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastSearchEngineChangedInternal(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.search.SEARCH_ENGINE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method

.method private getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "favicon"

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 227
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "name"

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 240
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSearchEngineInfos()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 157
    const-class v7, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;

    .line 158
    .local v3, regionalPhoneSearchEngineExt:Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v3, v7}, Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;->initSearchEngineInfosFromRpm(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    .line 159
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 160
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/search/SearchEngineInfo;

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 190
    :goto_0
    return-void

    .line 163
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    .line 166
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 167
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x204000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, searchEngines:[Ljava/lang/String;
    if-eqz v5, :cond_1

    const/4 v7, 0x1

    array-length v8, v5

    if-lt v7, v8, :cond_2

    .line 170
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "No data found for "

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    :cond_2
    aget-object v6, v5, v9

    .line 173
    .local v6, sp:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    .line 174
    aget-object v0, v5, v1

    .line 175
    .local v0, configInfo:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/mediatek/common/search/SearchEngineInfo;->parseFrom(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v2

    .line 176
    .local v2, info:Lcom/mediatek/common/search/SearchEngineInfo;
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v0           #configInfo:Ljava/lang/String;
    .end local v2           #info:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_3
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-eqz v7, :cond_4

    .line 181
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v7}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    invoke-virtual {v8}, Lcom/mediatek/common/search/SearchEngineInfo;->getFaviconUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/mediatek/search/SearchEngineManagerService;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 185
    :cond_4
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    if-nez v7, :cond_5

    .line 186
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/search/SearchEngineInfo;

    iput-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 189
    :cond_5
    iget-object v7, p0, Lcom/mediatek/search/SearchEngineManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/mediatek/search/SearchEngineManagerService;->broadcastSearchEngineChangedInternal(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getAvailableSearchEngines()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    const-string v0, "SearchEngineManagerService"

    const-string v1, "get avilable search engines"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mSearchEngineInfos:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "name"
    .parameter "favicon"

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    .line 218
    .local v0, engine:Lcom/mediatek/common/search/SearchEngineInfo;
    if-eqz v0, :cond_0

    .end local v0           #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return-object v0

    .restart local v0       #engine:Lcom/mediatek/common/search/SearchEngineInfo;
    :cond_0
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    return-object v0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 254
    packed-switch p1, :pswitch_data_0

    .line 260
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 256
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/mediatek/search/SearchEngineManagerService;->getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
    .locals 5
    .parameter "engine"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/mediatek/search/SearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;

    move-result-object v1

    .line 279
    .local v1, engines:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/search/SearchEngineInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/search/SearchEngineInfo;

    .line 280
    .local v0, eng:Lcom/mediatek/common/search/SearchEngineInfo;
    invoke-virtual {v0}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mediatek/common/search/SearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 281
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService;->mDefaultSearchEngine:Lcom/mediatek/common/search/SearchEngineInfo;

    .line 282
    const/4 v3, 0x1

    .line 285
    .end local v0           #eng:Lcom/mediatek/common/search/SearchEngineInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
