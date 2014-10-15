.class final Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SearchEngineManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/SearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocaleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/search/SearchEngineManagerService;


# direct methods
.method private constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/search/SearchEngineManagerService;Lcom/mediatek/search/SearchEngineManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;-><init>(Lcom/mediatek/search/SearchEngineManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mediatek/search/SearchEngineManagerService$LocaleChangeReceiver;->this$0:Lcom/mediatek/search/SearchEngineManagerService;

    #calls: Lcom/mediatek/search/SearchEngineManagerService;->initSearchEngineInfos()V
    invoke-static {v0}, Lcom/mediatek/search/SearchEngineManagerService;->access$100(Lcom/mediatek/search/SearchEngineManagerService;)V

    .line 198
    return-void
.end method
