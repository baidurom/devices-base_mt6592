.class Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;
.super Landroid/database/ContentObserver;
.source "BaiduAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/BaiduAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduMContentObserver"
.end annotation


# instance fields
.field private mAssetManager:Landroid/content/res/BaiduAssetManager;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/res/BaiduAssetManager;)V
    .locals 0
    .parameter "handler"
    .parameter "am"

    .prologue
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;->mAssetManager:Landroid/content/res/BaiduAssetManager;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    iget-object v0, p0, Landroid/content/res/BaiduAssetManager$BaiduMContentObserver;->mAssetManager:Landroid/content/res/BaiduAssetManager;

    invoke-static {v0}, Landroid/content/res/BaiduAssetManager$BaiduChannelInjector;->readChannelPkgsBackgroud(Landroid/content/res/BaiduAssetManager;)V

    return-void
.end method
