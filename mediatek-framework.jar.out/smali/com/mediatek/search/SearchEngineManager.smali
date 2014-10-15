.class public Lcom/mediatek/search/SearchEngineManager;
.super Ljava/lang/Object;
.source "SearchEngineManager.java"

# interfaces
.implements Lcom/mediatek/common/search/ISearchEngineManager;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SearchEngineManager"

.field private static mService:Lcom/mediatek/common/search/ISearchEngineManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManager;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "search_engine"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/common/search/ISearchEngineManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/search/ISearchEngineManagerService;

    move-result-object v0

    sput-object v0, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    .line 92
    return-void
.end method


# virtual methods
.method public getAvailableSearchEngines()Ljava/util/List;
    .locals 4
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
    .line 100
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/search/ISearchEngineManagerService;->getAvailableSearchEngines()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngineInfos() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "name"
    .parameter "favicon"

    .prologue
    .line 116
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/search/ISearchEngineManagerService;->getBestMatchSearchEngine(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBestMatchSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    invoke-interface {v1}, Lcom/mediatek/common/search/ISearchEngineManagerService;->getDefaultSearchEngine()Lcom/mediatek/common/search/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    :goto_0
    return-object v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 4
    .parameter "field"
    .parameter "value"

    .prologue
    .line 149
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/search/ISearchEngineManagerService;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchEngine(int field, String value) failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchEngineByFavicon(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "favicon"

    .prologue
    .line 129
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSearchEngineByName(Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;
    .locals 1
    .parameter "name"

    .prologue
    .line 138
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/search/SearchEngineManager;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
    .locals 4
    .parameter "engine"

    .prologue
    .line 176
    :try_start_0
    sget-object v1, Lcom/mediatek/search/SearchEngineManager;->mService:Lcom/mediatek/common/search/ISearchEngineManagerService;

    invoke-interface {v1, p1}, Lcom/mediatek/common/search/ISearchEngineManagerService;->setDefaultSearchEngine(Lcom/mediatek/common/search/SearchEngineInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchEngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemDefaultSearchEngine() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    goto :goto_0
.end method
