.class Lcom/android/internal/app/ActionBarImpl$BaiduInjector;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaiduInjector"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onConfigurationChanged(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 1
    .parameter "actionBarImpl"

    .prologue
    .line 208
    #getter for: Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;
    invoke-static {p0}, Lcom/android/internal/app/ActionBarImpl;->access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView$BaiduInjector;->reloadHomeIcon(Lcom/android/internal/widget/ActionBarView;)V

    .line 209
    return-void
.end method
