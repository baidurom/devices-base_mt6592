.class public Lcom/mediatek/op/search/DefaultRegionalPhoneSearchEngineExt;
.super Ljava/lang/Object;
.source "DefaultRegionalPhoneSearchEngineExt.java"

# interfaces
.implements Lcom/mediatek/common/search/IRegionalPhoneSearchEngineExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSearchEngineInfosFromRpm(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/search/SearchEngineInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method
